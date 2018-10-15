.class public Lavz$a;
.super Ljava/lang/Object;
.source "ScheduleRingToneItemData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lavz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field protected a:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;Ljava/lang/String;)V
    .locals 2
    .param p1, "scheduleRingtoneType"    # Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-string/jumbo v0, ""

    iput-object v0, p0, Lavz$a;->c:Ljava/lang/String;

    .line 70
    iput-boolean v1, p0, Lavz$a;->d:Z

    .line 71
    const-string/jumbo v0, ""

    iput-object v0, p0, Lavz$a;->e:Ljava/lang/String;

    .line 72
    iput-boolean v1, p0, Lavz$a;->f:Z

    .line 73
    const-string/jumbo v0, ""

    iput-object v0, p0, Lavz$a;->g:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lavz$a;->a:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    .line 76
    iput-object p2, p0, Lavz$a;->b:Ljava/lang/String;

    .line 77
    return-void
.end method

.method static synthetic a(Lavz$a;)Z
    .locals 1
    .param p0, "x0"    # Lavz$a;

    .prologue
    .line 56
    iget-boolean v0, p0, Lavz$a;->d:Z

    return v0
.end method

.method static synthetic b(Lavz$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lavz$a;

    .prologue
    .line 56
    iget-object v0, p0, Lavz$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lavz$a;)Z
    .locals 1
    .param p0, "x0"    # Lavz$a;

    .prologue
    .line 56
    iget-boolean v0, p0, Lavz$a;->f:Z

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lavz$a;
    .locals 0
    .param p1, "detailRingtoneDesc"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lavz$a;->e:Ljava/lang/String;

    .line 85
    return-object p0
.end method

.method public a(Z)Lavz$a;
    .locals 0
    .param p1, "isNeedShowHotIcon"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lavz$a;->d:Z

    .line 81
    return-object p0
.end method

.method public a()Lavz;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lavz;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lavz;-><init>(Lavz$a;Lavz$1;)V

    return-object v0
.end method

.method public b(Z)Lavz$a;
    .locals 0
    .param p1, "isNeedShowRightArrow"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lavz$a;->f:Z

    .line 89
    return-object p0
.end method
