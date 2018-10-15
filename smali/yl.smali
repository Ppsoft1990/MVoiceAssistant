.class public Lyl;
.super Lcom/iflytek/yd/business/BasicInfo;
.source "UpMdInfo.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/iflytek/yd/business/BasicInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0
    .param p1, "stopUploadToday"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lyl;->a:Z

    .line 17
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lyl;->a:Z

    return v0
.end method
