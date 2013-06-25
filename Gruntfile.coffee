module.exports = (grunt) ->
    grunt.initConfig
            pkg: grunt.file.readJSON('package.json')
            #watch task calls the default task
            watch:
                    scripts:
                            files: ['src/**/*.coffee', 'src/**/*.jade']
                            tasks: ['default']
                            options:
                                    interrupt: yes
            #compiles all coffeescript files to javascript
            coffee:
                    options:
                            bare: yes
                    glob_to_multiple:
                            expand: true,
                            cwd: 'src'
                            src: ['**/*.coffee']
                            dest: 'dev/'
                            ext: '.js'
            #copy all public files to the build directory
            copy:
                    main:
                        files:[
                            {expand: true, cwd:'src', src: ['public/**/*.js', 'public/**/*.css', 'public/**/*.png', 'views/**/*.jade'], dest:'dev/'}
                        ]
            
    grunt.loadNpmTasks('grunt-contrib-watch')
    grunt.loadNpmTasks('grunt-contrib-coffee')
    grunt.loadNpmTasks('grunt-contrib-copy')

    grunt.registerTask('default', ['coffee', 'copy'])