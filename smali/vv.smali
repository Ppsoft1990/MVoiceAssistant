.class public Lvv;
.super Lcom/iflytek/yd/business/BasicInfo;
.source "AnonLoginResponse.java"


# instance fields
.field private a:Lvw;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/iflytek/yd/business/BasicInfo;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public a()Lvw;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lvv;->a:Lvw;

    return-object v0
.end method

.method public a(Lvw;)V
    .locals 0
    .param p1, "userInfo"    # Lvw;

    .prologue
    .line 31
    iput-object p1, p0, Lvv;->a:Lvw;

    .line 32
    return-void
.end method
