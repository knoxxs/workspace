/*jslint evil:true */
/**
 * Dynamic thread loader
 *
 * 
 *  * 
 * 
*/

// 
var DISQUS;
if (!DISQUS || typeof DISQUS == 'function') {
    throw "DISQUS object is not initialized";
}
// 

// json_data and default_json django template variables will close
// and re-open javascript comment tags

(function () {
    var jsonData, cookieMessages, session, key;

    /* */ jsonData = {"reactions": [], "reactions_limit": 10, "ordered_highlighted": [], "posts": {}, "ordered_posts": [], "realtime_enabled": false, "ready": true, "mediaembed": [], "has_more_reactions": false, "realtime_paused": true, "integration": {"receiver_url": "", "hide_user_votes": false, "reply_position": false, "disqus_logo": false}, "highlighted": {}, "reactions_start": 0, "media_url": "http://mediacdn.disqus.com/1348088314", "users": {}, "user_unapproved": {}, "messagesx": {"count": 0, "unread": []}, "thread": {"voters_count": 0, "offset_posts": 0, "slug": "seven_databases_in_seven_weeks_postgresql_day_2_wakatta", "paginate": false, "num_pages": 0, "days_alive": 0, "moderate_none": false, "voters": {}, "total_posts": 0, "realtime_paused": true, "queued": false, "pagination_type": "append", "user_vote": null, "likes": 0, "num_posts": 0, "closed": false, "per_page": 0, "id": 493611303, "killed": false, "moderate_all": false}, "forum": {"use_media": true, "avatar_size": 32, "apiKey": "950DyTXfqDXNV8qHMUTe8zjIgvv0Fban4W2YnqZ4JKDhMLkHjCzlJSAYmzLHvEty", "features": {}, "comment_max_words": 0, "mobile_theme_disabled": false, "is_early_adopter": false, "login_buttons_enabled": false, "streaming_realtime": false, "reply_position": false, "id": 1060727, "default_avatar_url": "http://mediacdn.disqus.com/1348088314/images/noavatar32.png", "template": {"url": "http://mediacdn.disqus.com/1348088314/uploads/themes/7884a9652e94555c70f96b6be63be216/theme.js?252", "mobile": {"url": "http://mediacdn.disqus.com/1348088314/uploads/themes/mobile/theme.js?254", "css": "http://mediacdn.disqus.com/1348088314/uploads/themes/mobile/theme.css?254"}, "api": "1.1", "name": "Houdini", "css": "http://mediacdn.disqus.com/1348088314/uploads/themes/7884a9652e94555c70f96b6be63be216/theme.css?252"}, "max_depth": 0, "ranks_enabled": false, "lastUpdate": "", "linkbacks_enabled": false, "allow_anon_votes": true, "revert_new_login_flow": false, "stylesUrl": "http://mediacdn.disqus.com/uploads/styles/106/727/wakatta-blog.css", "show_avatar": true, "reactions_enabled": false, "disqus_auth_disabled": false, "name": "Wakatta!", "language": "en", "mentions_enabled": false, "url": "wakatta-blog", "allow_anon_post": true, "thread_votes_disabled": false, "hasCustomStyles": false, "moderate_all": false}, "settings": {"realtimeHost": "qq.disqus.com", "uploads_url": "http://media.disqus.com/uploads", "ssl_media_url": "https://securecdn.disqus.com/1348088314", "realtime_url": "http://rt.disqus.com/forums/realtime-cached.js", "facebook_app_id": "52254943976", "minify_js": true, "recaptcha_public_key": "6LdKMrwSAAAAAPPLVhQE9LPRW4LUSZb810_iaa8u", "read_only": false, "facebook_api_key": "52254943976", "juggler_url": "http://juggler.services.disqus.com", "realtimePort": "80", "debug": false, "disqus_url": "http://disqus.com", "media_url": "http://mediacdn.disqus.com/1348088314"}, "ranks": {}, "request": {"sort": "hot", "is_authenticated": false, "user_type": "anon", "subscribe_on_post": 0, "missing_perm": null, "user_id": null, "remote_domain_name": "", "remote_domain": "", "is_verified": false, "profile_url": "", "username": "", "is_global_moderator": false, "sharing": {}, "timestamp": "2012-09-20_03:05:47", "is_moderator": false, "ordered_unapproved_posts": [], "unapproved_posts": {}, "forum": "wakatta-blog", "is_initial_load": true, "display_username": "", "points": null, "has_email": false, "moderator_can_edit": false, "is_remote": false, "userkey": "", "page": 1}, "context": {"use_twitter_signin": false, "use_fb_connect": false, "show_reply": true, "sigma_chance": 10, "use_google_signin": false, "switches": {"olark_admin_addons": true, "digests:add": true, "es_index_threads": true, "discovery_best_comment": true, "html_email": true, "postsort": true, "phoenix_reputation": true, "firehose": true, "olark_admin_packages": true, "upload_media": true, "website_addons": true, "firehose_gnip_http": true, "textdigger_classification": true, "google_translate": true, "digests:follows": true, "next_realtime": true, "firehose_message_db_lookup": true, "digests": true, "digests:posts": true, "juggler_thread_onReady": true, "website_homepage_https_off": true, "discovery_network": true, "promoted_discovery_budget": true, "use_impermium": true, "notifications": true, "shardpost:index": true, "usertransformer_reputation": true, "fingerprint": true, "send_to_impermium": true, "firehose_push": true, "shardpost": true, "train_impermium": true, "limit_get_posts_days_30d": true, "website_base_template": true, "firehose_pubsub_throttle": true, "new_moderate": true, "redis_threadcount": true, "listactivity_replies": true, "postsort:index": true, "juggler_enabled": true, "next_thread_sharing": true, "use_master_for_api": true, "next_realtime_indicators": true, "community_icon": true, "discovery_jones": true, "originalauthor_switchover": true, "static_styles": true, "stats": true, "realtime": true, "redis_notification_tokens": true, "discovery_next": true, "show_captcha_on_links": true, "olark_support": true, "firehose_gnip": true, "firehose_pubsub": true, "digests:process": true, "olark_addons": true, "phoenix_optout": true, "edits_to_spam": true, "promoted_discovery_random": true, "discovery_community": true, "phoenix": true, "discovery_redirect_event": true, "use_rs_paginator_5m": true, "theme_editor_disabled": true, "textdigger_crawler": true, "listactivity_replies_30d": true, "next_discard_low_rep": true, "google_analytics": true, "mentions": true, "olark_install": true}, "forum_facebook_key": "", "use_yahoo": false, "subscribed": false, "active_gargoyle_switches": ["community_icon", "digests", "digests:add", "digests:follows", "digests:posts", "digests:process", "discovery_best_comment", "discovery_community", "discovery_jones", "discovery_network", "discovery_next", "discovery_redirect_event", "edits_to_spam", "es_index_threads", "fingerprint", "firehose", "firehose_gnip", "firehose_gnip_http", "firehose_message_db_lookup", "firehose_pubsub", "firehose_pubsub_throttle", "firehose_push", "google_analytics", "google_translate", "html_email", "juggler_enabled", "juggler_thread_onReady", "limit_get_posts_days_30d", "listactivity_replies", "listactivity_replies_30d", "mentions", "new_moderate", "next_discard_low_rep", "next_realtime", "next_realtime_indicators", "next_thread_sharing", "notifications", "olark_addons", "olark_admin_addons", "olark_admin_packages", "olark_install", "olark_support", "originalauthor_switchover", "phoenix", "phoenix_optout", "phoenix_reputation", "postsort", "postsort:index", "promoted_discovery_budget", "promoted_discovery_random", "realtime", "redis_notification_tokens", "redis_threadcount", "send_to_impermium", "shardpost", "shardpost:index", "show_captcha_on_links", "static_styles", "stats", "textdigger_classification", "textdigger_crawler", "theme_editor_disabled", "train_impermium", "use_impermium", "use_master_for_api", "use_rs_paginator_5m", "usertransformer_reputation", "website_addons", "website_base_template", "website_homepage_https_off"], "realtime_speed": 15000, "use_openid": false}}; /* */
    /* __extrajson__ */
    cookieMessages = {"user_created": null, "post_has_profile": null, "post_twitter": null, "post_not_approved": null}; session = {"url": null, "name": null, "email": null};
    jsonData.forum.template = {"url": "http://mediacdn.disqus.com/1348088314/uploads/themes/7884a9652e94555c70f96b6be63be216/theme.js?252", "mobile": {"url": "http://mediacdn.disqus.com/1348088314/uploads/themes/mobile/theme.js?254", "css": "http://mediacdn.disqus.com/1348088314/uploads/themes/mobile/theme.css?254"}, "api": "1.1", "name": "Houdini", "css": "http://mediacdn.disqus.com/1348088314/uploads/themes/7884a9652e94555c70f96b6be63be216/theme.css?252"};
    jsonData.context.active_gargoyle_switches = ["community_icon", "digests", "digests:add", "digests:follows", "digests:posts", "digests:process", "discovery_best_comment", "discovery_community", "discovery_jones", "discovery_network", "discovery_next", "discovery_redirect_event", "edits_to_spam", "es_index_threads", "fingerprint", "firehose", "firehose_gnip", "firehose_gnip_http", "firehose_message_db_lookup", "firehose_pubsub", "firehose_pubsub_throttle", "firehose_push", "google_analytics", "google_translate", "html_email", "juggler_enabled", "juggler_thread_onReady", "limit_get_posts_days_30d", "listactivity_replies", "listactivity_replies_30d", "mentions", "new_moderate", "next_discard_low_rep", "next_realtime", "next_realtime_indicators", "next_thread_sharing", "notifications", "olark_addons", "olark_admin_addons", "olark_admin_packages", "olark_install", "olark_support", "originalauthor_switchover", "phoenix", "phoenix_optout", "phoenix_reputation", "postsort", "postsort:index", "promoted_discovery_budget", "promoted_discovery_random", "realtime", "redis_notification_tokens", "redis_threadcount", "send_to_impermium", "shardpost", "shardpost:index", "show_captcha_on_links", "static_styles", "stats", "textdigger_classification", "textdigger_crawler", "theme_editor_disabled", "train_impermium", "use_impermium", "use_master_for_api", "use_rs_paginator_5m", "usertransformer_reputation", "website_addons", "website_base_template", "website_homepage_https_off"];
    jsonData.context.all_switches = {"olark_admin_addons": true, "digests:add": true, "es_index_threads": true, "discovery_best_comment": true, "html_email": true, "postsort": true, "phoenix_reputation": true, "firehose": true, "olark_admin_packages": true, "website_addons": true, "firehose_gnip_http": true, "textdigger_classification": true, "google_translate": true, "digests:follows": true, "next_realtime": true, "firehose_message_db_lookup": true, "digests": true, "digests:posts": true, "juggler_thread_onReady": true, "website_homepage_https_off": true, "discovery_network": true, "promoted_discovery_budget": true, "use_impermium": true, "notifications": true, "shardpost:index": true, "usertransformer_reputation": true, "fingerprint": true, "send_to_impermium": true, "firehose_push": true, "shardpost": true, "train_impermium": true, "limit_get_posts_days_30d": true, "website_base_template": true, "firehose_pubsub_throttle": true, "new_moderate": true, "redis_threadcount": true, "listactivity_replies": true, "postsort:index": true, "juggler_enabled": true, "next_thread_sharing": true, "use_master_for_api": true, "next_realtime_indicators": true, "community_icon": true, "discovery_jones": true, "originalauthor_switchover": true, "static_styles": true, "stats": true, "realtime": true, "redis_notification_tokens": true, "discovery_next": true, "show_captcha_on_links": true, "olark_support": true, "firehose_gnip": true, "firehose_pubsub": true, "digests:process": true, "olark_addons": true, "phoenix_optout": true, "edits_to_spam": true, "promoted_discovery_random": true, "discovery_community": true, "phoenix": true, "discovery_redirect_event": true, "use_rs_paginator_5m": true, "theme_editor_disabled": true, "textdigger_crawler": true, "listactivity_replies_30d": true, "next_discard_low_rep": true, "google_analytics": true, "mentions": true, "olark_install": true};

    DISQUS.jsonData = jsonData;
    DISQUS.jsonData.cookie_messages = cookieMessages;
    DISQUS.jsonData.session = session;

    if (DISQUS.useSSL) {
        DISQUS.useSSL(DISQUS.jsonData.settings);
    }

    // The mappings below are for backwards compatibility--before we port all the code that
    // accesses jsonData.settings to DISQUS.settings

    var mappings = {
        debug:                'disqus.debug',
        minify_js:            'disqus.minified',
        read_only:            'disqus.readonly',
        recaptcha_public_key: 'disqus.recaptcha.key',
        facebook_app_id:      'disqus.facebook.appId',
        facebook_api_key:     'disqus.facebook.apiKey'
    };

    var urlMappings = {
        disqus_url:    'disqus.urls.main',
        media_url:     'disqus.urls.media',
        ssl_media_url: 'disqus.urls.sslMedia',
        realtime_url:  'disqus.urls.realtime',
        uploads_url:   'disqus.urls.uploads'
    };

    if (DISQUS.jsonData.context.switches.realtime_setting_change) {
        urlMappings.realtimeHost = 'realtime.host';
        urlMappings.realtimePort = 'realtime.port';
    }
    for (key in mappings) {
        if (mappings.hasOwnProperty(key)) {
            DISQUS.settings.set(mappings[key], DISQUS.jsonData.settings[key]);
        }
    }

    for (key in urlMappings) {
        if (urlMappings.hasOwnProperty(key)) {
            DISQUS.jsonData.settings[key] = DISQUS.settings.get(urlMappings[key]);
        }
    }
}());

DISQUS.jsonData.context.csrf_token = '21bc467119200cb06806902fa8e2f5b0';

DISQUS.jsonData.urls = {
    login: 'http://disqus.com/profile/login/',
    logout: 'http://disqus.com/logout/',
    upload_remove: 'http://wakatta-blog.disqus.com/thread/seven_databases_in_seven_weeks_postgresql_day_2_wakatta/async_media_remove/',
    request_user_profile: 'http://disqus.com/AnonymousUser/',
    request_user_avatar: 'http://mediacdn.disqus.com/1348088314/images/noavatar92.png',
    verify_email: 'http://disqus.com/verify/',
    remote_settings: 'http://wakatta-blog.disqus.com/_auth/embed/remote_settings/',
    edit_profile_window: 'http://disqus.com/embed/profile/edit/',
    embed_thread: 'http://wakatta-blog.disqus.com/thread.js',
    embed_vote: 'http://wakatta-blog.disqus.com/vote.js',
    embed_thread_vote: 'http://wakatta-blog.disqus.com/thread_vote.js',
    embed_thread_share: 'http://wakatta-blog.disqus.com/thread_share.js',
    embed_queueurl: 'http://wakatta-blog.disqus.com/queueurl.js',
    embed_hidereaction: 'http://wakatta-blog.disqus.com/hidereaction.js',
    embed_more_reactions: 'http://wakatta-blog.disqus.com/more_reactions.js',
    embed_subscribe: 'http://wakatta-blog.disqus.com/subscribe.js',
    embed_highlight: 'http://wakatta-blog.disqus.com/highlight.js',
    embed_block: 'http://wakatta-blog.disqus.com/block.js',
    update_moderate_all: 'http://wakatta-blog.disqus.com/update_moderate_all.js',
    update_days_alive: 'http://wakatta-blog.disqus.com/update_days_alive.js',
    show_user_votes: 'http://wakatta-blog.disqus.com/show_user_votes.js',
    forum_view: 'http://wakatta-blog.disqus.com/seven_databases_in_seven_weeks_postgresql_day_2_wakatta',
    cnn_saml_try: 'http://disqus.com/saml/cnn/try/',
    realtime: DISQUS.jsonData.settings.realtime_url,
    thread_view: 'http://wakatta-blog.disqus.com/thread/seven_databases_in_seven_weeks_postgresql_day_2_wakatta/',
    twitter_connect: DISQUS.jsonData.settings.disqus_url + '/_ax/twitter/begin/',
    yahoo_connect: DISQUS.jsonData.settings.disqus_url + '/_ax/yahoo/begin/',
    openid_connect: DISQUS.jsonData.settings.disqus_url + '/_ax/openid/begin/',
    googleConnect: DISQUS.jsonData.settings.disqus_url + '/_ax/google/begin/',
    community: 'http://wakatta-blog.disqus.com/community.html',
    admin: 'http://wakatta-blog.disqus.com/admin/moderate/',
    moderate: 'http://wakatta-blog.disqus.com/admin/moderate/',
    moderate_threads: 'http://wakatta-blog.disqus.com/admin/moderate-threads/',
    settings: 'http://wakatta-blog.disqus.com/admin/settings/',
    unmerged_profiles: 'http://disqus.com/embed/profile/unmerged_profiles/',
    juggler: DISQUS.jsonData.settings.juggler_url,

    channels: {
        def:      'http://disqus.com/default.html', /* default channel */
        auth:     'https://disqus.com/embed/login.html',
        tweetbox: 'http://disqus.com/forums/integrations/twitter/tweetbox.html?f=wakatta-blog',
        edit:     'http://wakatta-blog.disqus.com/embed/editcomment.html'
    }
};


// 
//     
DISQUS.jsonData.urls.channels.reply = 'http://mediacdn.disqus.com/1348088314/build/system/reply.html';
DISQUS.jsonData.urls.channels.upload = 'http://mediacdn.disqus.com/1348088314/build/system/upload.html';
DISQUS.jsonData.urls.channels.sso = 'http://mediacdn.disqus.com/1348088314/build/system/sso.html';
DISQUS.jsonData.urls.channels.facebook = 'http://mediacdn.disqus.com/1348088314/build/system/facebook.html';
//     
// 
