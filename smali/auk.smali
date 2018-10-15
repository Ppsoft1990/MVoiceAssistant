.class public Lauk;
.super Lcom/iflytek/yd/speech/FilterResult;
.source "ScheduleFilterResult.java"


# instance fields
.field private a:Z

.field private b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/iflytek/yd/speech/FilterResult;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lauk;->a:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lauk;->b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    return-object v0
.end method

.method public a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 0
    .param p1, "mRemindItem"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 21
    iput-object p1, p0, Lauk;->b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 22
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "isLose"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lauk;->a:Z

    .line 26
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lauk;->a:Z

    return v0
.end method
