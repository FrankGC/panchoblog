var gulp = require("gulp");
var sass = require("gulp-sass");
var autoprefixer = require("gulp-autoprefixer");

gulp.task("sasser",function()
{
	gulp.src("*.scss")
	.pipe(sass())
	.pipe(autoprefixer({ browsers:["last 3 versions"]}))
	.pipe(gulp.dest("app/assets/stylesheets"))
})

gulp.task("default",function()
{
	gulp.watch("*.scss",["sasser"]);
})
