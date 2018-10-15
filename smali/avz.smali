.class public Lavz;
.super Ljava/lang/Object;
.source "ScheduleRingToneItemData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lavz$a;
    }
.end annotation


# instance fields
.field private a:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

.field private b:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lavz$a;)V
    .locals 1
    .param p1, "builder"    # Lavz$a;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iget-object v0, p1, Lavz$a;->a:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    iput-object v0, p0, Lavz;->a:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    .line 50
    iget-object v0, p1, Lavz$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lavz;->c:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lavz$a;->a(Lavz$a;)Z

    move-result v0

    iput-boolean v0, p0, Lavz;->d:Z

    .line 52
    invoke-static {p1}, Lavz$a;->b(Lavz$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lavz;->e:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lavz$a;->c(Lavz$a;)Z

    move-result v0

    iput-boolean v0, p0, Lavz;->g:Z

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lavz$a;Lavz$1;)V
    .locals 0
    .param p1, "x0"    # Lavz$a;
    .param p2, "x1"    # Lavz$1;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lavz;-><init>(Lavz$a;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lavz;->f:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;)V
    .locals 0
    .param p1, "mRecordRingSubType"    # Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    .prologue
    .line 147
    iput-object p1, p0, Lavz;->b:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    .line 148
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "mRingSubname"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lavz;->f:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lavz;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTitleName"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lavz;->c:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public c()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lavz;->a:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "mRingtonePath"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lavz;->h:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lavz;->h:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lavz;->b:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    return-object v0
.end method
