.class public Lazu;
.super Ljava/lang/Object;
.source "ShareActivityUtil.java"


# static fields
.field public static a:Z

.field private static c:Lazu;


# instance fields
.field private b:Lcom/iflytek/framework/ui/share/AbsShareResultListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lazu;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lazu;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lazu;->c:Lazu;

    if-nez v0, :cond_1

    .line 32
    const-class v1, Lazu;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lazu;->c:Lazu;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lazu;

    invoke-direct {v0}, Lazu;-><init>()V

    sput-object v0, Lazu;->c:Lazu;

    .line 36
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    sget-object v0, Lazu;->c:Lazu;

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;Lcom/iflytek/framework/ui/share/LxShareObject$Build;Lcom/iflytek/framework/ui/share/AbsShareResultListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "build"    # Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    .param p2, "listener"    # Lcom/iflytek/framework/ui/share/AbsShareResultListener;

    .prologue
    .line 219
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iflytek/framework/ui/share/ShareMoreActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 220
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "shareBuild"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 221
    invoke-static {}, Lazu;->a()Lazu;

    move-result-object v1

    invoke-direct {v1, p2}, Lazu;->a(Lcom/iflytek/framework/ui/share/AbsShareResultListener;)V

    .line 222
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 223
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/framework/ui/share/AbsShareResultListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "translate"    # Ljava/lang/String;
    .param p3, "module"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/iflytek/framework/ui/share/AbsShareResultListener;

    .prologue
    .line 57
    new-instance v0, Lazu$1;

    invoke-direct {v0, p3, p0, p4}, Lazu$1;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/iflytek/framework/ui/share/AbsShareResultListener;)V

    invoke-static {p0, p1, p2, v0}, Lbad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lbad$a;)V

    .line 75
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/framework/ui/share/AbsShareResultListener;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "imageUrl"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/iflytek/framework/ui/share/AbsShareResultListener;

    .prologue
    .line 147
    new-instance v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    invoke-direct {v0}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;-><init>()V

    .line 148
    .local v0, "build":Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    invoke-virtual {v0, p1}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->title(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->des(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->webPageUrl(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v3

    invoke-virtual {v3, p4}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->thumbPath(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    .line 149
    const-string/jumbo v3, "music"

    invoke-virtual {v0, v3}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->module(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v3

    const-string/jumbo v4, "webpage"

    invoke-virtual {v3, v4}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mode(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v3

    const-string/jumbo v4, "com.tencent.mm"

    invoke-virtual {v3, v4}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->packageName(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    .line 151
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v2, "shareList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/framework/ui/share/LxShareObject$Build;>;"
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->changeTimeline(Z)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    const-string/jumbo v3, "com.sina.weibo"

    invoke-virtual {v0, v3}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->changePackageName(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/iflytek/framework/ui/share/ShareActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "shareList"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 157
    invoke-static {}, Lazu;->a()Lazu;

    move-result-object v3

    invoke-direct {v3, p5}, Lazu;->a(Lcom/iflytek/framework/ui/share/AbsShareResultListener;)V

    .line 158
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 159
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/framework/ui/share/AbsShareResultListener;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "musicUrl"    # Ljava/lang/String;
    .param p5, "imageUrl"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/iflytek/framework/ui/share/AbsShareResultListener;

    .prologue
    .line 172
    new-instance v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    invoke-direct {v0}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;-><init>()V

    .line 173
    .local v0, "build":Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    invoke-virtual {v0, p1}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->title(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->des(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->webPageUrl(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v3

    invoke-virtual {v3, p5}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->thumbPath(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v3

    invoke-virtual {v3, p4}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->musicUrl(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    .line 174
    const-string/jumbo v3, "mobius"

    invoke-virtual {v0, v3}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->module(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v3

    const-string/jumbo v4, "music"

    invoke-virtual {v3, v4}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mode(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v3

    const-string/jumbo v4, "com.tencent.mm"

    invoke-virtual {v3, v4}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->packageName(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    .line 175
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v2, "shareList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/framework/ui/share/LxShareObject$Build;>;"
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->changeTimeline(Z)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/iflytek/framework/ui/share/ShareActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "shareList"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 180
    invoke-static {}, Lazu;->a()Lazu;

    move-result-object v3

    invoke-direct {v3, p6}, Lazu;->a(Lcom/iflytek/framework/ui/share/AbsShareResultListener;)V

    .line 181
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 183
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/framework/ui/share/AbsShareResultListener;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "circleContent"    # Ljava/lang/String;
    .param p3, "friendContent"    # Ljava/lang/String;
    .param p4, "wxFriendUrl"    # Ljava/lang/String;
    .param p5, "wxCircleUrl"    # Ljava/lang/String;
    .param p6, "weiBoUrl"    # Ljava/lang/String;
    .param p7, "imageUrl"    # Ljava/lang/String;
    .param p8, "listener"    # Lcom/iflytek/framework/ui/share/AbsShareResultListener;

    .prologue
    .line 89
    new-instance v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    invoke-direct {v0}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;-><init>()V

    .line 90
    .local v0, "friendBuild":Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    const-string/jumbo v5, "webpage"

    invoke-virtual {v0, v5}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mode(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->title(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->des(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v5

    invoke-virtual {v5, p4}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->webPageUrl(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v5

    invoke-virtual {v5, p7}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->thumbPath(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    .line 91
    const-string/jumbo v5, "read"

    invoke-virtual {v0, v5}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->module(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v5

    const-string/jumbo v6, "weixinFriend"

    invoke-virtual {v5, v6}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->tag(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v5

    const-string/jumbo v6, "com.tencent.mm"

    invoke-virtual {v5, v6}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->packageName(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    .line 93
    new-instance v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    invoke-direct {v2}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;-><init>()V

    .line 94
    .local v2, "momentsBuild":Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    const-string/jumbo v5, "webpage"

    invoke-virtual {v2, v5}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mode(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->title(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v5

    invoke-virtual {v5, p5}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->webPageUrl(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v5

    invoke-virtual {v5, p7}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->thumbPath(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->timeline(Z)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    .line 95
    const-string/jumbo v5, "read"

    invoke-virtual {v2, v5}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->module(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v5

    const-string/jumbo v6, "weixinTimeLine"

    invoke-virtual {v5, v6}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->tag(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v5

    const-string/jumbo v6, "com.tencent.mm"

    invoke-virtual {v5, v6}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->packageName(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    .line 97
    new-instance v4, Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    invoke-direct {v4}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;-><init>()V

    .line 98
    .local v4, "weiBoBuild":Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    const-string/jumbo v5, "webpage"

    invoke-virtual {v4, v5}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mode(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->title(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v5

    invoke-virtual {v5, p6}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->webPageUrl(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    .line 99
    const-string/jumbo v5, "read"

    invoke-virtual {v4, v5}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->module(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v5

    const-string/jumbo v6, "weibo"

    invoke-virtual {v5, v6}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->tag(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v5

    const-string/jumbo v6, "com.sina.weibo"

    invoke-virtual {v5, v6}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->packageName(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    .line 101
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v3, "shareList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/framework/ui/share/LxShareObject$Build;>;"
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/iflytek/framework/ui/share/ShareActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "shareList"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 108
    invoke-static {}, Lazu;->a()Lazu;

    move-result-object v5

    invoke-direct {v5, p8}, Lazu;->a(Lcom/iflytek/framework/ui/share/AbsShareResultListener;)V

    .line 109
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 110
    return-void
.end method

.method static synthetic a(Lazu;Lcom/iflytek/framework/ui/share/AbsShareResultListener;)V
    .locals 0
    .param p0, "x0"    # Lazu;
    .param p1, "x1"    # Lcom/iflytek/framework/ui/share/AbsShareResultListener;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lazu;->a(Lcom/iflytek/framework/ui/share/AbsShareResultListener;)V

    return-void
.end method

.method private a(Lcom/iflytek/framework/ui/share/AbsShareResultListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/iflytek/framework/ui/share/AbsShareResultListener;

    .prologue
    .line 41
    iput-object p1, p0, Lazu;->b:Lcom/iflytek/framework/ui/share/AbsShareResultListener;

    .line 42
    return-void
.end method


# virtual methods
.method public b()Lcom/iflytek/framework/ui/share/AbsShareResultListener;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lazu;->b:Lcom/iflytek/framework/ui/share/AbsShareResultListener;

    return-object v0
.end method
