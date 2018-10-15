.class public Labj;
.super Ljava/lang/Object;
.source "DialSmsBusinessImpl.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Labj;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Labi;

.field private e:Z

.field private final f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Labj;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Labj;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Labj;->e:Z

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Labj;->f:Ljava/lang/Object;

    .line 29
    iput-object p1, p0, Labj;->c:Landroid/content/Context;

    .line 30
    return-void
.end method

.method public static a()Labj;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Labj;->b:Labj;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Labj;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    sget-object v0, Labj;->b:Labj;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Labj;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Labj;-><init>(Landroid/content/Context;)V

    sput-object v0, Labj;->b:Labj;

    .line 36
    :cond_0
    sget-object v0, Labj;->b:Labj;

    return-object v0
.end method

.method static synthetic a(Labj;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Labj;

    .prologue
    .line 18
    iget-object v0, p0, Labj;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Labj;Z)Z
    .locals 0
    .param p0, "x0"    # Labj;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Labj;->e:Z

    return p1
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Labj;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public b()Labi;
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Labj;->d:Labi;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Labi;

    iget-object v1, p0, Labj;->c:Landroid/content/Context;

    .line 46
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Labj$1;

    invoke-direct {v2, p0}, Labj$1;-><init>(Labj;)V

    invoke-direct {v0, v1, v2}, Labi;-><init>(Landroid/content/Context;Lwd;)V

    iput-object v0, p0, Labj;->d:Labi;

    .line 129
    :cond_0
    iget-object v0, p0, Labj;->d:Labi;

    return-object v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "contacts.content_suffix"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    const-string/jumbo v1, "telephone.timeout"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    const-string/jumbo v1, "telephone.business.url"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    const-string/jumbo v1, "video.sohu_wap_url"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    const-string/jumbo v1, "video.sohu_wap_ad_class"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    const-string/jumbo v1, "music.cmcc_music_url"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    const-string/jumbo v1, "music.present.record_url"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    const-string/jumbo v1, "music.present.banner_url"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    const-string/jumbo v1, "music.present.wap_present_url"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    const-string/jumbo v1, "music.present.upload_url"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {p0}, Labj;->b()Labi;

    move-result-object v1

    invoke-virtual {v1, v0}, Labi;->a(Ljava/util/List;)J

    .line 148
    const/4 v1, 0x1

    iput-boolean v1, p0, Labj;->e:Z

    .line 149
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Labj;->d:Labi;

    if-eqz v0, :cond_0

    .line 153
    iget-boolean v0, p0, Labj;->e:Z

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Labj;->d:Labi;

    invoke-virtual {v0}, Labi;->a()V

    .line 157
    :cond_0
    return-void
.end method
