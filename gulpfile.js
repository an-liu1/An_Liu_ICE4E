//import all of the required plugins / packages

var gulp = require('gulp');


var sass = require('gulp-sass');
var browserSync = require('browser-sync').create();

//start writing yout tasks 
gulp.task('serve', function()
{
    browserSync.init({
        server: {
            baseDir : './',
            index: 'dindex.html'
        }
    });
});

gulp.task('sass', function()
{
//define tht gul-sass task
return gulp.src('./sass/**/*.scss')
.pipe(sass({outputStyle : "compressed"}).on("error", sass.logError))
.pipe(gulp.dest('./css'))
});

//watch sass files for changes, compile
gulp.task('sass:watch', function()
{
//define tht gul-sass task
gulp.watch('.sass/**/*.scss', ['sass']);
});

//do image optimization
