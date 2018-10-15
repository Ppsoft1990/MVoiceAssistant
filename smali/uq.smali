.class public Luq;
.super Ljava/lang/Object;
.source "TimeGenerator.java"


# static fields
.field public static a:Ljava/text/SimpleDateFormat;

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const/16 v0, 0x3e8

    sput v0, Luq;->b:I

    .line 24
    sget v0, Luq;->b:I

    mul-int/lit8 v0, v0, 0x3c

    sput v0, Luq;->c:I

    .line 25
    sget v0, Luq;->c:I

    mul-int/lit8 v0, v0, 0xf

    sput v0, Luq;->d:I

    .line 26
    sget v0, Luq;->c:I

    mul-int/lit8 v0, v0, 0x3c

    sput v0, Luq;->e:I

    .line 27
    sget v0, Luq;->e:I

    mul-int/lit8 v0, v0, 0x18

    sput v0, Luq;->f:I

    .line 29
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Luq;->g:Ljava/text/SimpleDateFormat;

    .line 30
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Luq;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private static a(I)I
    .locals 2
    .param p0, "interval"    # I

    .prologue
    .line 67
    if-gtz p0, :cond_1

    .line 68
    sget v0, Luq;->e:I

    .line 71
    :cond_0
    :goto_0
    return v0

    .line 70
    :cond_1
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1, p0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 71
    .local v0, "randTime":I
    sget v1, Luq;->e:I

    if-ge v0, v1, :cond_0

    sget v0, Luq;->e:I

    goto :goto_0
.end method

.method public static a()J
    .locals 4

    .prologue
    .line 42
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 43
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method public static a(JJ)J
    .locals 10
    .param p0, "startTime"    # J
    .param p2, "endTime"    # J

    .prologue
    .line 75
    invoke-static {}, Luq;->a()J

    move-result-wide v0

    .line 78
    .local v0, "currentTime":J
    cmp-long v6, v0, p2

    if-lez v6, :cond_0

    .line 79
    invoke-static {p0, p1, p2, p3}, Luq;->b(JJ)I

    move-result v4

    .line 80
    .local v4, "interval":I
    invoke-static {v4}, Luq;->a(I)I

    move-result v5

    .line 81
    .local v5, "randTime":I
    sget v6, Luq;->f:I

    int-to-long v6, v6

    add-long/2addr v6, p0

    int-to-long v8, v5

    add-long v2, v6, v8

    .line 92
    .local v2, "genTime":J
    :goto_0
    return-wide v2

    .line 82
    .end local v2    # "genTime":J
    .end local v4    # "interval":I
    .end local v5    # "randTime":I
    :cond_0
    cmp-long v6, v0, p0

    if-lez v6, :cond_1

    .line 83
    invoke-static {v0, v1, p2, p3}, Luq;->b(JJ)I

    move-result v4

    .line 84
    .restart local v4    # "interval":I
    invoke-static {v4}, Luq;->a(I)I

    move-result v5

    .line 85
    .restart local v5    # "randTime":I
    int-to-long v6, v5

    add-long v2, v0, v6

    .line 86
    .restart local v2    # "genTime":J
    goto :goto_0

    .line 87
    .end local v2    # "genTime":J
    .end local v4    # "interval":I
    .end local v5    # "randTime":I
    :cond_1
    invoke-static {p0, p1, p2, p3}, Luq;->b(JJ)I

    move-result v4

    .line 88
    .restart local v4    # "interval":I
    invoke-static {v4}, Luq;->a(I)I

    move-result v5

    .line 89
    .restart local v5    # "randTime":I
    int-to-long v6, v5

    add-long v2, p0, v6

    .restart local v2    # "genTime":J
    goto :goto_0
.end method

.method public static a(Luw;)J
    .locals 4
    .param p0, "downloadTime"    # Luw;

    .prologue
    .line 96
    invoke-static {p0}, Luw;->a(Luw;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    const-wide/16 v0, 0x0

    .line 99
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Luw;->a()Lux;

    move-result-object v0

    invoke-virtual {v0}, Lux;->a()J

    move-result-wide v0

    invoke-virtual {p0}, Luw;->b()Lux;

    move-result-object v2

    invoke-virtual {v2}, Lux;->a()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Luq;->a(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method private static b(JJ)I
    .locals 2
    .param p0, "startTime"    # J
    .param p2, "endTime"    # J

    .prologue
    .line 63
    sub-long v0, p2, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static b(Luw;)J
    .locals 4
    .param p0, "downloadTime"    # Luw;

    .prologue
    .line 103
    invoke-static {p0}, Luw;->a(Luw;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    const-wide/16 v0, 0x0

    .line 106
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Luw;->a()Lux;

    move-result-object v0

    invoke-virtual {v0}, Lux;->b()J

    move-result-wide v0

    invoke-virtual {p0}, Luw;->b()Lux;

    move-result-object v2

    invoke-virtual {v2}, Lux;->b()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Luq;->a(JJ)J

    move-result-wide v0

    goto :goto_0
.end method
