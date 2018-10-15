.class public Lbdy;
.super Ljava/lang/Object;


# static fields
.field private static a:Lbfc;

.field private static b:Z

.field private static c:I

.field private static d:Landroid/os/Handler;

.field private static e:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput v0, Lbdy;->c:I

    sput-object v1, Lbdy;->d:Landroid/os/Handler;

    sput-object v1, Lbdy;->e:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method

.method static synthetic a()V
    .locals 0

    invoke-static {}, Lbdy;->c()V

    return-void
.end method

.method private static a(Landroid/app/Application;)V
    .locals 1

    new-instance v0, Lbdy$1;

    invoke-direct {v0}, Lbdy$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static a(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lbdy;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lbdy;->a(Landroid/app/Application;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lbdy;->a:Lbfc;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p0, :cond_0

    new-instance v0, Lbdz;

    invoke-direct {v0, p0}, Lbdz;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lbdz;->a(Ljava/util/Map;)V

    sget-object v1, Lbdy;->a:Lbfc;

    invoke-virtual {v1, v0}, Lbfc;->a(Lbdz;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    sput v0, Lbdy;->c:I

    if-nez p1, :cond_0

    const-string/jumbo v1, "appKey is null, RSAnalyticsSDK start fail!!"

    invoke-static {v1}, Lbef;->b(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lbdy;->a:Lbfc;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "RSSDK have started!!"

    invoke-static {v1}, Lbef;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lbey;->a(Landroid/content/Context;)V

    new-instance v0, Lbfc;

    invoke-direct {v0}, Lbfc;-><init>()V

    sput-object v0, Lbdy;->a:Lbfc;

    sget-object v0, Lbdy;->a:Lbfc;

    iput-object p1, v0, Lbfc;->a:Ljava/lang/String;

    sget-object v0, Lbdy;->a:Lbfc;

    iput-object p2, v0, Lbfc;->b:Ljava/lang/String;

    sget-object v0, Lbdy;->a:Lbfc;

    sget-boolean v1, Lbdy;->b:Z

    iput-boolean v1, v0, Lbfc;->c:Z

    sget-object v0, Lbdy;->a:Lbfc;

    invoke-virtual {v0, p0}, Lbfc;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b()V
    .locals 0

    invoke-static {}, Lbdy;->d()V

    return-void
.end method

.method private static c()V
    .locals 1

    sget-object v0, Lbdy;->a:Lbfc;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lbdy;->a:Lbfc;

    invoke-virtual {v0}, Lbfc;->a()V

    goto :goto_0
.end method

.method private static d()V
    .locals 1

    sget-object v0, Lbdy;->a:Lbfc;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lbdy;->a:Lbfc;

    invoke-virtual {v0}, Lbfc;->b()V

    goto :goto_0
.end method

.method public static onEvent(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lbdy;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
