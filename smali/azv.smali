.class public Lazv;
.super Ljava/lang/Object;
.source "ShortCutManager.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "title"

    aput-object v1, v0, v2

    const-string/jumbo v1, "iconResource"

    aput-object v1, v0, v3

    sput-object v0, Lazv;->a:[Ljava/lang/String;

    .line 24
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.android.launcher"

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.launcher2"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.android.launcher3"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string/jumbo v2, "com.android.launcher4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "com.htc.launcher"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "com.oppo.launcher"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "com.bbk.launcher2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "com.asus.launcher"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "com.yulong.android.launcher3"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "com.sec.android.app.launcher"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "com.lewa.launcher"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "com.sonyericsson.home"

    aput-object v2, v0, v1

    sput-object v0, Lazv;->b:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .local v0, "comp":Landroid/content/ComponentName;
    const-string/jumbo v2, "android.intent.extra.shortcut.INTENT"

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 39
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 40
    const-string/jumbo v2, "ShortCutManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteShortCut: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent$ShortcutIconResource;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "icon"    # Landroid/content/Intent$ShortcutIconResource;

    .prologue
    .line 55
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lazv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent$ShortcutIconResource;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent$ShortcutIconResource;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "icon"    # Landroid/content/Intent$ShortcutIconResource;
    .param p5, "focus"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 74
    invoke-static {p0, p3}, Lazv;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    :goto_0
    return-void

    .line 78
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v1, "shortcut":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .local v0, "comp":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 84
    .local v2, "shortcutIntent":Landroid/content/Intent;
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 85
    const-string/jumbo v3, "\u6dfb\u52a0\u5230\u684c\u9762"

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 86
    const-string/jumbo v3, "SHORTCUT_FOCUS"

    invoke-virtual {v2, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    :cond_1
    const-string/jumbo v3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 90
    const-string/jumbo v3, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 91
    const-string/jumbo v3, "duplicate"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 93
    const-string/jumbo v3, "ShortCutManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "addShortCutToDesktop: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 123
    const-string/jumbo v1, "ShortCutManager"

    const-string/jumbo v2, "checkShortcut()"

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v6, 0x0

    .line 128
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v8, ""

    .line 129
    .local v8, "url":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 130
    const-string/jumbo v8, "content://com.android.launcher.settings/favorites?notify=true"

    .line 135
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 136
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lazv;->a:[Ljava/lang/String;

    const-string/jumbo v3, "title=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 137
    if-eqz v6, :cond_2

    .line 138
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 139
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v1, v9

    .line 151
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v8    # "url":Ljava/lang/String;
    :goto_1
    return v1

    .line 132
    .restart local v8    # "url":Ljava/lang/String;
    :cond_0
    const-string/jumbo v8, "content://com.android.launcher2.settings/favorites?notify=true"

    goto :goto_0

    .line 142
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v10

    .line 143
    goto :goto_1

    .line 145
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v8    # "url":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 146
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ShortCutManager"

    const-string/jumbo v2, "checkShortcut()"

    invoke-static {v1, v2, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v10

    .line 147
    goto :goto_1

    .line 150
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v8    # "url":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "ShortCutManager"

    const-string/jumbo v2, "dose not exist"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v10

    .line 151
    goto :goto_1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent$ShortcutIconResource;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "icon"    # Landroid/content/Intent$ShortcutIconResource;

    .prologue
    .line 99
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, "shortcut":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .local v0, "comp":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 107
    .local v2, "shortcutIntent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 109
    const-string/jumbo v3, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 110
    const-string/jumbo v3, "duplicate"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 112
    const-string/jumbo v3, "ShortCutManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "addShortCutToDesktop: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method
