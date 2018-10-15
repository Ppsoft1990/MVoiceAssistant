.class public Lye;
.super Lcom/iflytek/yd/business/BasicInfo;
.source "LoginInfo.java"


# instance fields
.field protected a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/iflytek/yd/business/BasicInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "sid"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lye;->a:Ljava/lang/String;

    .line 20
    return-void
.end method
