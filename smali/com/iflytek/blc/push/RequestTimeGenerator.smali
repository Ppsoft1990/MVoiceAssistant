.class public Lcom/iflytek/blc/push/RequestTimeGenerator;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3e8

    sput v0, Lcom/iflytek/blc/push/RequestTimeGenerator;->a:I

    sget v0, Lcom/iflytek/blc/push/RequestTimeGenerator;->a:I

    mul-int/lit8 v0, v0, 0x3c

    sput v0, Lcom/iflytek/blc/push/RequestTimeGenerator;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNextRandom(I)J
    .locals 6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    sget v0, Lcom/iflytek/blc/push/RequestTimeGenerator;->b:I

    int-to-long v0, v0

    :goto_0
    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v0

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    add-double/2addr v0, v4

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    div-double/2addr v0, v4

    int-to-double v4, p1

    mul-double/2addr v0, v4

    div-int/lit8 v4, p1, 0x2

    int-to-double v4, v4

    add-double/2addr v0, v4

    double-to-long v0, v0

    sget v4, Lcom/iflytek/blc/push/RequestTimeGenerator;->b:I

    int-to-long v4, v4

    mul-long/2addr v0, v4

    goto :goto_0
.end method
