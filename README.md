# window-hider-linux
Hide or show multiple windows based on partial window title match. This is the Linux version. [The Windows version is here](https://github.com/ggeorgip/window-hider).

### Removing distractions
These days multiple apps are fighting for your attention: Skype, WhatsApp, Viber, Messenger, Slack, Hangouts... If you could only mute them while working and once you are ready for a break to look at them again...

Now you can.

```
./window-hider.sh toggle viber whatsapp skype inbox messenger gmail
```

And their windows disappear. Even from the Dock. The apps will continue working in the background. All  words coming after "toggle" are used to partially match the window title, case insensitive.

```
./window-hider.sh toggle viber whatsapp skype inbox messenger gmail
```

Here they come again.

Running the command multiple times toggles the app's windows visibility.

### How it works ###

When first executed, the window handles of the matched window titles are written to ~/.config/.window-hider. When executed again, if this file exists, the windows with the handles inside the file are made visible again and the file is deleted.

### Install & run

Clone the repo or download just window-hider.sh

Execute:

```
sudo apt install wmctrl xdotool
chmod +x window-hider.sh
```

Run it.

```
./window-hider.sh toggle partialWindowTitle1, partialWindowTitle2, ...
```

### Ideas

I keep Gmail's Inbox and Facebook's Messenger into a separate Chrome window. This way I hide them too.

If you haven't read [Cal Newport - Deep Work: Rules for Focused Success in a Distracted World](https://www.goodreads.com/book/show/25744928-deep-work) yet, please do.
