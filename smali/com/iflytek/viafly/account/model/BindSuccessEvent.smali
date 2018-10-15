.class public Lcom/iflytek/viafly/account/model/BindSuccessEvent;
.super Ljava/lang/Object;
.source "BindSuccessEvent.java"


# instance fields
.field private mobile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "mobile"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/iflytek/viafly/account/model/BindSuccessEvent;->mobile:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public getMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/iflytek/viafly/account/model/BindSuccessEvent;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0
    .param p1, "mobile"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/iflytek/viafly/account/model/BindSuccessEvent;->mobile:Ljava/lang/String;

    .line 20
    return-void
.end method
