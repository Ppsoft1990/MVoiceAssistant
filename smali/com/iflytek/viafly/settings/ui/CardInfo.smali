.class public Lcom/iflytek/viafly/settings/ui/CardInfo;
.super Ljava/lang/Object;
.source "CardInfo.java"


# instance fields
.field private mCardId:Ljava/lang/String;

.field private mCardName:Ljava/lang/String;

.field private mCardState:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCardId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CardInfo;->mCardId:Ljava/lang/String;

    return-object v0
.end method

.method public getCardName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CardInfo;->mCardName:Ljava/lang/String;

    return-object v0
.end method

.method public isCardState()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/CardInfo;->mCardState:Z

    return v0
.end method

.method public setCardId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCardId"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CardInfo;->mCardId:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setCardName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCardName"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CardInfo;->mCardName:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setCardState(Z)V
    .locals 0
    .param p1, "mCardState"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/iflytek/viafly/settings/ui/CardInfo;->mCardState:Z

    .line 33
    return-void
.end method
