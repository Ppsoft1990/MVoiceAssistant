.class public Lcom/baidu/aiupdatesdk/UpdateInfo;
.super Ljava/lang/Object;
.source "UpdateInfo.java"


# instance fields
.field private changeLog:Ljava/lang/String;

.field private forceUpdate:Z

.field private size:J

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChangeLog()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/UpdateInfo;->changeLog:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/baidu/aiupdatesdk/UpdateInfo;->size:J

    return-wide v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/UpdateInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isForceUpdate()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/baidu/aiupdatesdk/UpdateInfo;->forceUpdate:Z

    return v0
.end method

.method public setChangeLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "changeLog"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/baidu/aiupdatesdk/UpdateInfo;->changeLog:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setForceUpdate(Z)V
    .locals 0
    .param p1, "forceUpdate"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/baidu/aiupdatesdk/UpdateInfo;->forceUpdate:Z

    .line 45
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/baidu/aiupdatesdk/UpdateInfo;->size:J

    .line 29
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/baidu/aiupdatesdk/UpdateInfo;->version:Ljava/lang/String;

    .line 21
    return-void
.end method
