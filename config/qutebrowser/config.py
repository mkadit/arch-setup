config.source('base16-onedark.config.py')

c.url.searchengines = {
    'DEFAULT': 'https://duckduckgo.com/?q={}',
    'aw': 'https://wiki.archlinux.org/?search={}',
    'rer': 'https://reddit.com/r/{}',
    'res': 'https://www.reddit.com/search/?q={}',
    'wi': 'https://en.wikipedia.org/?search={}',
    'yt': 'https://youtube.com/results?search_query={}',
    'bl': 'https://bit.ly/{}',
    'gh': 'https://github.com/{}',
    'awp': 'https://aur.archlinux.org/packages/?O=0&SeB=nd&K={}&outdated=&SB=p&SO=d&PP=50&do_Orphans=Orphans',
    'anm': 'https://www17.animeultima.eu/search?search={}',
    'lkd': 'https://www.linkedin.com/search/results/all/?keywords={}&origin=GLOBAL_SEARCH_HEADER',
    'wpm': 'https://www.wallpapermaiden.com/search?term={}',
    'nu': 'https://www.novelupdates.com/?s={}&post_type=seriesplans',
    'zrc': 'https://www.zerochan.net/{}',
    'ff': 'https://www.fanfiction.net/search/?keywords={}&ready=1&type=story',
    'px': "https://www.pixiv.net/en/tags/{}?s_mode=s_tag",
    'gm': 'https://meet.google.com/{}',
    'gl': 'https://gitlab.com/{}',
    'wa': 'https://www.wolframalpha.com/input/?i={}',
    'ao3': 'https://archiveofourown.org/works/search?utf8=%E2%9C%93&work_search%5Bquery%5D={}',
    'srx': 'https://searx.decatec.de?q={}&categories=general&language=de'
}

c.editor.command = ['gvim', '-f', '{file}', '-c', 'normal {line}G{column0}1']

# config.set('colors.webpage.darkmode.enabled', True)

config.bind(',p', 'spawn --userscript qute-pass --dmenu-invocation dmenu')
config.bind(
    ',P', 'spawn --userscript qute-pass --dmenu-invocation dmenu --password-only')
c.scrolling.smooth = True
config.bind('M', 'hint links spawn mpv {hint-url}')
config.bind('Zm', 'hint links spawn st -e youtube-dl {hint-url}')
config.bind('xb', 'config-cycle statusbar.show always never')
config.bind('xt', 'config-cycle tabs.show always never')
config.bind(
    'xx', 'config-cycle statusbar.show always never;;config-cycle tabs.show always never')
