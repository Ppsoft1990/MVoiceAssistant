.class public Laqi;
.super Ljava/lang/Object;
.source "MusicNotificationManager.java"

# interfaces
.implements Lapg;
.implements Lcom/iflytek/yd/base/ProcessListener;


# static fields
.field private static b:Laqi;


# instance fields
.field private a:Landroid/widget/RemoteViews;

.field private c:Landroid/content/Context;

.field private d:Landroid/app/NotificationManager;

.field private e:Landroid/app/Notification;

.field private f:I

.field private g:Laqj;

.field private h:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    new-instance v0, Laqi$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Laqi$2;-><init>(Laqi;Landroid/os/Looper;)V

    iput-object v0, p0, Laqi;->h:Landroid/os/Handler;

    .line 54
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Laqi;->c:Landroid/content/Context;

    .line 55
    invoke-static {p0}, Lcom/iflytek/viafly/ViaFlyApp;->a(Lcom/iflytek/yd/base/ProcessListener;)V

    .line 57
    const-string/jumbo v0, "bookNotification"

    invoke-static {v0}, Log;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Laqi;->f:I

    .line 58
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 213
    iget-object v0, p0, Laqi;->c:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Laqi;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Laqi;

    .prologue
    .line 37
    iget-object v0, p0, Laqi;->h:Landroid/os/Handler;

    return-object v0
.end method

.method private a(ILandroid/widget/RemoteViews;)V
    .locals 9
    .param p1, "state"    # I
    .param p2, "remoteView"    # Landroid/widget/RemoteViews;

    .prologue
    const v8, 0x7f0b0541

    const v7, 0x7f0b053e

    const v6, 0x7f0b053d

    .line 179
    const/4 v4, 0x4

    if-ne v4, p1, :cond_2

    .line 180
    const-string/jumbo v4, "MusicNotificationManager"

    const-string/jumbo v5, "updateRemoteViews  state is playing"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-direct {p0}, Laqi;->h()Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f020238

    :goto_0
    invoke-virtual {p2, v8, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 187
    :goto_1
    iget-object v4, p0, Laqi;->g:Laqj;

    invoke-virtual {v4}, Laqj;->K()Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    move-result-object v0

    .line 188
    .local v0, "audio":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->q()Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 191
    invoke-virtual {p2, v6, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 195
    :goto_2
    invoke-virtual {v0}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->b()Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "author":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 197
    invoke-virtual {p2, v7, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 202
    :goto_3
    invoke-virtual {v0}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->g()Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "smallLogo":Ljava/lang/String;
    new-instance v4, Laqi$1;

    invoke-direct {v4, p0}, Laqi$1;-><init>(Laqi;)V

    invoke-static {p2, v3, v4}, Laqc;->a(Landroid/widget/RemoteViews;Ljava/lang/String;Laqc$a;)V

    .line 210
    .end local v1    # "author":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "smallLogo":Ljava/lang/String;
    :cond_0
    return-void

    .line 181
    .end local v0    # "audio":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    :cond_1
    const v4, 0x7f020237

    goto :goto_0

    .line 183
    :cond_2
    const-string/jumbo v4, "MusicNotificationManager"

    const-string/jumbo v5, "updateRemoteViews  state is not playing"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-direct {p0}, Laqi;->h()Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f02023a

    :goto_4
    invoke-virtual {p2, v8, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    :cond_3
    const v4, 0x7f020239

    goto :goto_4

    .line 193
    .restart local v0    # "audio":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    .restart local v2    # "name":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, ""

    invoke-virtual {p2, v6, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_2

    .line 199
    .restart local v1    # "author":Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, ""

    invoke-virtual {p2, v7, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_3
.end method

.method private a(Landroid/widget/RemoteViews;)V
    .locals 6
    .param p1, "remoteView"    # Landroid/widget/RemoteViews;

    .prologue
    const v5, 0x7f0b0543

    const v4, 0x7f0b0542

    const v3, 0x7f0b0541

    const v2, 0x7f0b0540

    .line 156
    invoke-direct {p0}, Laqi;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const-string/jumbo v0, "MusicNotificationManager"

    const-string/jumbo v1, "the notification bar is dark."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const v0, 0x7f0b053d

    const-string/jumbo v1, "#d6d6d6"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 159
    const v0, 0x7f0b053e

    const-string/jumbo v1, "#d6d6d6"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 160
    const v0, 0x7f020232

    invoke-virtual {p1, v5, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 161
    const v0, 0x7f020236

    invoke-virtual {p1, v4, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 162
    const v0, 0x7f020234

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 163
    const v0, 0x7f02023a

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 168
    :goto_0
    const-string/jumbo v0, "com.iflytek.viafly.music.stopservice"

    invoke-direct {p0, v0}, Laqi;->a(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 169
    const-string/jumbo v0, "com.iflytek.viafly.music.playlast"

    invoke-direct {p0, v0}, Laqi;->a(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 170
    const-string/jumbo v0, "com.iflytek.viafly.music.playnext"

    invoke-direct {p0, v0}, Laqi;->a(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 171
    const-string/jumbo v0, "com.iflytek.viafly.music.playstart"

    invoke-direct {p0, v0}, Laqi;->a(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 172
    return-void

    .line 165
    :cond_0
    const-string/jumbo v0, "MusicNotificationManager"

    const-string/jumbo v1, "the notification bar is white."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private c(I)Landroid/app/Notification;
    .locals 6
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x0

    .line 124
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Laqi;->c:Landroid/content/Context;

    const-class v3, Lcom/iflytek/viafly/Home;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.iflytek.cmcc.action.ACTION_MUSIC_PLAYER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 128
    iget-object v2, p0, Laqi;->c:Landroid/content/Context;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 130
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Laqi;->e:Landroid/app/Notification;

    if-nez v2, :cond_0

    .line 131
    new-instance v2, Lm$d;

    iget-object v3, p0, Laqi;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Lm$d;-><init>(Landroid/content/Context;)V

    const v3, 0x7f02023e

    .line 132
    invoke-virtual {v2, v3}, Lm$d;->a(I)Lm$d;

    move-result-object v2

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lm$d;->a(J)Lm$d;

    move-result-object v2

    .line 134
    invoke-virtual {v2, v0}, Lm$d;->a(Landroid/app/PendingIntent;)Lm$d;

    move-result-object v2

    const/4 v3, 0x2

    .line 135
    invoke-virtual {v2, v3}, Lm$d;->c(I)Lm$d;

    move-result-object v2

    const/4 v3, 0x1

    .line 136
    invoke-virtual {v2, v3}, Lm$d;->a(Z)Lm$d;

    move-result-object v2

    .line 137
    invoke-virtual {v2}, Lm$d;->a()Landroid/app/Notification;

    move-result-object v2

    iput-object v2, p0, Laqi;->e:Landroid/app/Notification;

    .line 138
    iget-object v2, p0, Laqi;->e:Landroid/app/Notification;

    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 142
    :cond_0
    iget-object v2, p0, Laqi;->e:Landroid/app/Notification;

    invoke-direct {p0, p1}, Laqi;->d(I)Landroid/widget/RemoteViews;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 143
    iget-object v2, p0, Laqi;->e:Landroid/app/Notification;

    return-object v2
.end method

.method public static c()Laqi;
    .locals 2

    .prologue
    .line 61
    sget-object v0, Laqi;->b:Laqi;

    if-nez v0, :cond_1

    .line 62
    const-class v1, Laqi;

    monitor-enter v1

    .line 63
    :try_start_0
    sget-object v0, Laqi;->b:Laqi;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Laqi;

    invoke-direct {v0}, Laqi;-><init>()V

    sput-object v0, Laqi;->b:Laqi;

    .line 66
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_1
    sget-object v0, Laqi;->b:Laqi;

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private d(I)Landroid/widget/RemoteViews;
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 147
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Laqi;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0300d9

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Laqi;->a:Landroid/widget/RemoteViews;

    .line 148
    iget-object v0, p0, Laqi;->a:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Laqi;->a(Landroid/widget/RemoteViews;)V

    .line 149
    iget-object v0, p0, Laqi;->a:Landroid/widget/RemoteViews;

    invoke-direct {p0, p1, v0}, Laqi;->a(ILandroid/widget/RemoteViews;)V

    .line 150
    iget-object v0, p0, Laqi;->a:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Laqi;->c:Landroid/content/Context;

    invoke-static {v0}, Loh;->a(Landroid/content/Context;)Loh;

    move-result-object v0

    invoke-virtual {v0}, Loh;->f()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    const/4 v1, 0x1

    .line 257
    const/4 v0, 0x4

    if-ne v0, p1, :cond_1

    .line 258
    iget-object v0, p0, Laqi;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    .line 260
    iget-object v0, p0, Laqi;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public a(II)V
    .locals 0
    .param p1, "current"    # I
    .param p2, "total"    # I

    .prologue
    .line 286
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 80
    const-string/jumbo v1, "MusicNotificationManager"

    const-string/jumbo v2, "handleIntent "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    if-eqz p1, :cond_0

    .line 83
    iget-object v1, p0, Laqi;->g:Laqj;

    if-nez v1, :cond_1

    .line 84
    const-string/jumbo v1, "MusicNotificationManager"

    const-string/jumbo v2, "handleIntent mManager == null"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0}, Laqi;->g()V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "MusicNotificationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleIntent action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string/jumbo v1, "com.iflytek.viafly.music.playstart"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    iget-object v1, p0, Laqi;->g:Laqj;

    invoke-virtual {v1}, Laqj;->i()V

    goto :goto_0

    .line 92
    :cond_2
    const-string/jumbo v1, "com.iflytek.viafly.music.playnext"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 93
    iget-object v1, p0, Laqi;->g:Laqj;

    invoke-virtual {v1}, Laqj;->s()V

    goto :goto_0

    .line 94
    :cond_3
    const-string/jumbo v1, "com.iflytek.viafly.music.playlast"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 95
    iget-object v1, p0, Laqi;->g:Laqj;

    invoke-virtual {v1}, Laqj;->j()V

    goto :goto_0

    .line 96
    :cond_4
    const-string/jumbo v1, "com.iflytek.viafly.music.stopservice"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p0}, Laqi;->g()V

    .line 99
    iget-object v1, p0, Laqi;->g:Laqj;

    invoke-virtual {v1}, Laqj;->J()V

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;)V
    .locals 2
    .param p1, "item"    # Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    .prologue
    .line 266
    iget-object v0, p0, Laqi;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 267
    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "favor"    # Ljava/lang/Boolean;

    .prologue
    .line 281
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "loading"    # Z

    .prologue
    .line 276
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Laqi;->h:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 301
    return-void
.end method

.method public b(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 291
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 73
    const-string/jumbo v0, "MusicNotificationManager"

    const-string/jumbo v1, "init "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Laqi;->c:Landroid/content/Context;

    invoke-static {v0}, Laqj;->a(Landroid/content/Context;)Laqj;

    move-result-object v0

    iput-object v0, p0, Laqi;->g:Laqj;

    .line 75
    iget-object v0, p0, Laqi;->g:Laqj;

    invoke-virtual {v0, p0}, Laqj;->c(Lapg;)V

    .line 76
    return-void
.end method

.method public e()V
    .locals 4

    .prologue
    .line 106
    iget-object v2, p0, Laqi;->g:Laqj;

    invoke-virtual {v2}, Laqj;->D()I

    move-result v2

    invoke-direct {p0, v2}, Laqi;->c(I)Landroid/app/Notification;

    move-result-object v1

    .line 107
    .local v1, "notification":Landroid/app/Notification;
    iget-object v2, p0, Laqi;->d:Landroid/app/NotificationManager;

    if-nez v2, :cond_0

    .line 108
    iget-object v2, p0, Laqi;->c:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Laqi;->d:Landroid/app/NotificationManager;

    .line 110
    :cond_0
    iget-object v2, p0, Laqi;->d:Landroid/app/NotificationManager;

    if-eqz v2, :cond_1

    .line 111
    const-string/jumbo v2, "MusicNotificationManager"

    const-string/jumbo v3, "onPlayStateUpdated notify "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v2, p0, Laqi;->g:Laqj;

    if-eqz v2, :cond_1

    .line 113
    iget-object v2, p0, Laqi;->g:Laqj;

    invoke-virtual {v2}, Laqj;->K()Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    move-result-object v0

    .line 114
    .local v0, "audio":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 115
    iget-object v2, p0, Laqi;->d:Landroid/app/NotificationManager;

    iget v3, p0, Laqi;->f:I

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 120
    .end local v0    # "audio":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    :cond_1
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 271
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Laqi;->d:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Laqi;->c:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Laqi;->d:Landroid/app/NotificationManager;

    .line 235
    :cond_0
    iget-object v0, p0, Laqi;->d:Landroid/app/NotificationManager;

    if-eqz v0, :cond_1

    .line 236
    const-string/jumbo v0, "MusicNotificationManager"

    const-string/jumbo v1, "cancelNotification notify "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Laqi;->d:Landroid/app/NotificationManager;

    iget v1, p0, Laqi;->f:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 239
    :cond_1
    return-void
.end method

.method public onProcessRestart()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Laqi;->g:Laqj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laqi;->g:Laqj;

    invoke-virtual {v0}, Laqj;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Laqi;->g:Laqj;

    invoke-virtual {v0}, Laqj;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const/4 v0, 0x0

    .line 228
    :goto_0
    return v0

    .line 225
    :cond_0
    invoke-virtual {p0}, Laqi;->g()V

    .line 228
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
