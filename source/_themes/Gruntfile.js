module.exports = function (grunt) {

    // load all grunt tasks
    require('matchdep').filterDev('grunt-*').forEach(grunt.loadNpmTasks);

    grunt.initConfig({
        copy: {
            fonts: {
                files: [
                    {
                        expand: true,
                        flatten: true,
                        src: ['bower_components/font-awesome/fonts/*'],
                        dest: 'ods-theme/static/fonts/',
                        filter: 'isFile'
                    },
                    {
                        expand: true,
                        flatten: true,
                        src: ['bower_components/lato-googlefont/Lato-Regular.ttf',
                            'bower_components/lato-googlefont/Lato-Italic.ttf',
                            'bower_components/lato-googlefont/Lato-Bold.ttf',
                            'bower_components/lato-googlefont/Lato-BoldItalic.ttf'],
                        dest: 'ods-theme/static/fonts/',
                        filter: 'isFile'
                    },
                    {
                        expand: true,
                        flatten: true,
                        src: ['bower_components/robotoslab-googlefont/RobotoSlab-Bold.ttf',
                            'bower_components/robotoslab-googlefont/RobotoSlab-Regular.ttf'],
                        dest: 'ods-theme/static/fonts/',
                        filter: 'isFile'
                    },
                    {
                        expand: true,
                        flatten: true,
                        src: ['bower_components/inconsolata-googlefont/Inconsolata-Bold.ttf',
                            'bower_components/inconsolata-googlefont/Inconsolata-Regular.ttf'],
                        dest: 'ods-theme/static/fonts/',
                        filter: 'isFile'
                    }
                ]
            }
        },

        sass: {
            dev: {
                options: {
                    style: 'expanded',
                    loadPath: ['bower_components/bourbon/dist', 'bower_components/neat/app/assets/stylesheets', 'bower_components/font-awesome/scss', 'bower_components/wyrm/sass']
                },
                files: [{
                    expand: true,
                    cwd: 'dev/sass',
                    src: ['*.sass'],
                    dest: 'ods-theme/static/css',
                    ext: '.css'
                }]
            },
            build: {
                options: {
                    style: 'compressed',
                    sourcemap: 'none',
                    loadPath: ['bower_components/bourbon/dist', 'bower_components/neat/app/assets/stylesheets', 'bower_components/font-awesome/scss', 'bower_components/wyrm/sass']
                },
                files: [{
                    expand: true,
                    cwd: 'dev/sass',
                    src: ['*.sass'],
                    dest: 'ods-theme/static/css',
                    ext: '.css'
                }]
            }
        },

        browserify: {
            dev: {
                options: {
                    external: ['jquery'],
                    alias: {
                        'ods-theme': './dev/js/theme.js'
                    }
                },
                src: ['dev/js/*.js'],
                dest: 'ods-theme/static/js/theme.js'
            },
            build: {
                options: {
                    external: ['jquery'],
                    alias: {
                        'ods-theme': './dev/js/theme.js'
                    }
                },
                src: ['dev/js/*.js'],
                dest: 'ods-theme/static/js/theme.js'
            }
        },
        uglify: {
            dist: {
                options: {
                    sourceMap: false,
                    mangle: {
                        reserved: ['jQuery'] // Leave 'jQuery' identifier unchanged
                    },
                    ie8: true // compliance with IE 6-8 quirks
                },
                files: [{
                    expand: true,
                    src: ['ods-theme/static/js/*.js' ,'!ods-theme/static/js/*.min.js'],
                    dest: 'ods-theme/static/js/',
                    rename: function (dst, src) {
                        // Use unminified file name for minified file
                        return src;
                    }
                }]
            }
        },
        exec: {
            bower_update: {
                cmd: 'bower update'
            }
        },
        clean: {
            fonts: ["ods-theme/static/fonts"],
            css: ["ods-theme/static/css"],
            js: ["ods-theme/static/js/*", "!ods-theme/static/js/*"]
        },

        watch: {
            /* Compile sass changes into theme directory */
            sass: {
                files: ['dev/sass/*.sass', 'bower_components/**/*.sass'],
                tasks: ['sass:dev']
            },
            /* JavaScript */
            browserify: {
                files: ['js/*.js'],
                tasks: ['browserify:dev']
            }
        }

    });

    grunt.loadNpmTasks('grunt-exec');
    grunt.loadNpmTasks('grunt-contrib-connect');
    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.loadNpmTasks('grunt-contrib-sass');
    grunt.loadNpmTasks('grunt-contrib-clean');
    grunt.loadNpmTasks('grunt-contrib-copy');
    grunt.loadNpmTasks('grunt-open');
    grunt.loadNpmTasks('grunt-browserify');

    grunt.registerTask('default', ['exec:bower_update', 'clean', 'copy:fonts', 'sass:dev', 'browserify:dev', 'watch']);
    grunt.registerTask('build', ['exec:bower_update', 'clean', 'copy:fonts', 'sass:build', 'browserify:build', 'uglify']);
}