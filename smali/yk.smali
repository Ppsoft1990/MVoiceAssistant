.class public Lyk;
.super Lcom/iflytek/yd/business/BasicInfo;
.source "UpLogInfo.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/iflytek/yd/business/BasicInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "forbidTime"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lyk;->a:Ljava/lang/String;

    .line 14
    return-void
.end method
