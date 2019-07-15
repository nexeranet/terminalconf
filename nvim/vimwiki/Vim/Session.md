# Session

When you’ve been working for awhile and you’re all moved in to your new digs —
maybe it’s the end of the day, maybe it’s been 71 days and you finally have to
give in and restart your computer, you just save the session file to anywhere
you’d like (I like ~/.vim/sessions/) using :mksession (or :mks).

* :mks ~/path/to-session/name-session.vim

- The next time you’re ready to start working on that project, source that session file within vim:

* :source ~/.vim/sessions/rooster.vim

- Or open it when you run vim using the -S flag:

* vim -S ~/.vim/sessions/rooster.vim

