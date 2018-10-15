.class public Lart;
.super Ljava/lang/Object;
.source "DefaultPluginDataFactory.java"


# static fields
.field private static final a:[I

.field private static b:Lart;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lart;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static a()Lart;
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lart;->b:Lart;

    if-nez v0, :cond_1

    .line 31
    const-class v1, Lart;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lart;->b:Lart;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lart;

    invoke-direct {v0}, Lart;-><init>()V

    sput-object v0, Lart;->b:Lart;

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_1
    sget-object v0, Lart;->b:Lart;

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static b(I)Z
    .locals 5
    .param p0, "pluginType"    # I

    .prologue
    const/4 v1, 0x0

    .line 58
    sget-object v3, Lart;->a:[I

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget v0, v3, v2

    .line 59
    .local v0, "defaultType":I
    if-ne v0, p0, :cond_1

    .line 60
    const/4 v1, 0x1

    .line 63
    .end local v0    # "defaultType":I
    :cond_0
    return v1

    .line 58
    .restart local v0    # "defaultType":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(I)Larv;
    .locals 1
    .param p1, "pluginType"    # I

    .prologue
    .line 41
    packed-switch p1, :pswitch_data_0

    .line 53
    :pswitch_0
    new-instance v0, Laru;

    invoke-direct {v0}, Laru;-><init>()V

    :goto_0
    return-object v0

    .line 43
    :pswitch_1
    new-instance v0, Lars;

    invoke-direct {v0}, Lars;-><init>()V

    goto :goto_0

    .line 45
    :pswitch_2
    new-instance v0, Larx;

    invoke-direct {v0}, Larx;-><init>()V

    goto :goto_0

    .line 47
    :pswitch_3
    new-instance v0, Larw;

    invoke-direct {v0}, Larw;-><init>()V

    goto :goto_0

    .line 49
    :pswitch_4
    new-instance v0, Lary;

    invoke-direct {v0}, Lary;-><init>()V

    goto :goto_0

    .line 51
    :pswitch_5
    new-instance v0, Larz;

    invoke-direct {v0}, Larz;-><init>()V

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public b()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Larv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Larv;>;"
    sget-object v3, Lart;->a:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget v1, v3, v2

    .line 69
    .local v1, "pluginType":I
    invoke-virtual {p0, v1}, Lart;->a(I)Larv;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    .end local v1    # "pluginType":I
    :cond_0
    return-object v0
.end method
