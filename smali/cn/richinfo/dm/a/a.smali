.class public Lcn/richinfo/dm/a/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static c:Lcn/richinfo/dm/a/a;


# instance fields
.field private b:Lcn/richinfo/dm/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "DMReport"

    sput-object v0, Lcn/richinfo/dm/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcn/richinfo/dm/a/b;->a(Landroid/content/Context;)Lcn/richinfo/dm/a/b;

    move-result-object v0

    iput-object v0, p0, Lcn/richinfo/dm/a/a;->b:Lcn/richinfo/dm/a/b;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcn/richinfo/dm/a/a;
    .locals 2

    const-class v1, Lcn/richinfo/dm/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/richinfo/dm/a/a;->c:Lcn/richinfo/dm/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcn/richinfo/dm/a/a;

    invoke-direct {v0, p0}, Lcn/richinfo/dm/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/richinfo/dm/a/a;->c:Lcn/richinfo/dm/a/a;

    :cond_0
    sget-object v0, Lcn/richinfo/dm/a/a;->c:Lcn/richinfo/dm/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcn/richinfo/dm/a/a;->b:Lcn/richinfo/dm/a/b;

    invoke-virtual {v0}, Lcn/richinfo/dm/a/b;->a()V

    return-void
.end method
