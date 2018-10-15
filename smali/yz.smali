.class public Lyz;
.super Ljava/lang/Object;
.source "RequestTimeGenerator.java"


# static fields
.field private static a:I

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/16 v0, 0x3e8

    sput v0, Lyz;->a:I

    .line 8
    sget v0, Lyz;->a:I

    mul-int/lit8 v0, v0, 0x3c

    sput v0, Lyz;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()D
    .locals 6

    .prologue
    .line 11
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 13
    .local v0, "random":Ljava/util/Random;
    invoke-virtual {v0}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    div-double/2addr v2, v4

    return-wide v2
.end method


# virtual methods
.method public a(I)J
    .locals 12
    .param p1, "pushInterval"    # I

    .prologue
    .line 17
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 18
    .local v2, "calendar":Ljava/util/Calendar;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 19
    .local v4, "currentTime":J
    move-wide v6, v4

    .line 21
    .local v6, "nextRequestTime":J
    const-wide/16 v0, 0x0

    .line 22
    .local v0, "addTime":J
    const/4 v3, 0x1

    if-gt p1, v3, :cond_0

    .line 23
    sget v3, Lyz;->b:I

    int-to-long v0, v3

    .line 28
    :goto_0
    add-long/2addr v6, v0

    .line 30
    return-wide v6

    .line 25
    :cond_0
    invoke-direct {p0}, Lyz;->a()D

    move-result-wide v8

    int-to-double v10, p1

    mul-double/2addr v8, v10

    div-int/lit8 v3, p1, 0x2

    int-to-double v10, v3

    add-double/2addr v8, v10

    double-to-long v8, v8

    sget v3, Lyz;->b:I

    int-to-long v10, v3

    mul-long v0, v8, v10

    goto :goto_0
.end method
