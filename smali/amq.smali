.class public abstract Lamq;
.super Ljava/lang/Object;
.source "AbsBookBizResultListener.java"

# interfaces
.implements Lamy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddCollectResult(Ljava/lang/String;Ljava/lang/String;Lamo$a;)V
    .locals 0
    .param p1, "contentId"    # Ljava/lang/String;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "bookMark"    # Lamo$a;

    .prologue
    .line 61
    return-void
.end method

.method public onBuyResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "resultCode"    # Ljava/lang/String;

    .prologue
    .line 81
    return-void
.end method

.method public onChapterInfoResult(Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;)V
    .locals 0
    .param p1, "chapterAudio"    # Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    .prologue
    .line 26
    return-void
.end method

.method public onChapterListResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/listenbook/entity/Chapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "chapters":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/Chapter;>;"
    return-void
.end method

.method public onChargeInfoResult(Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;)V
    .locals 0
    .param p1, "chargeInfo"    # Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    .prologue
    .line 31
    return-void
.end method

.method public onCollectGetResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lamo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "bookMarkInfos":Ljava/util/List;, "Ljava/util/List<Lamo;>;"
    return-void
.end method

.method public onContentInfoResult(Lamm;)V
    .locals 0
    .param p1, "bookInfo"    # Lamm;

    .prologue
    .line 51
    return-void
.end method

.method public onError(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 21
    return-void
.end method

.method public onNoMoreChapterResult()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public onResultCode(ILjava/lang/String;)V
    .locals 0
    .param p1, "requestType"    # I
    .param p2, "netErrorCode"    # Ljava/lang/String;

    .prologue
    .line 85
    return-void
.end method

.method public onShareLinkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "wxFriendUrl"    # Ljava/lang/String;
    .param p2, "wxCircleUrl"    # Ljava/lang/String;
    .param p3, "weiboUrl"    # Ljava/lang/String;

    .prologue
    .line 71
    return-void
.end method

.method public onShareReportResult(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    .line 76
    return-void
.end method

.method public onSubCollectResult()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public onTipVoiceResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 90
    return-void
.end method

.method public onUnLoginResult()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method
