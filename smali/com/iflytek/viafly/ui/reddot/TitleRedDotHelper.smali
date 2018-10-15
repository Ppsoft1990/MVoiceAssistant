.class public Lcom/iflytek/viafly/ui/reddot/TitleRedDotHelper;
.super Ljava/lang/Object;
.source "TitleRedDotHelper.java"

# interfaces
.implements Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$OnUpdateRedDotListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TitleRedDotHelper"


# instance fields
.field private mHomeTitle:Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;


# direct methods
.method public constructor <init>(Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;)V
    .locals 0
    .param p1, "homeTitleContainer"    # Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/iflytek/viafly/ui/reddot/TitleRedDotHelper;->mHomeTitle:Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;

    .line 23
    return-void
.end method

.method private showTitleDot(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/ui/reddot/DotEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "dotList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/ui/reddot/DotEntity;>;"
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 26
    const/4 v2, 0x0

    .line 27
    .local v2, "needShowLeftIndicate":Z
    const/4 v3, 0x0

    .line 28
    .local v3, "needShowRightIndicate":Z
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/ui/reddot/DotEntity;

    .line 32
    .local v1, "item":Lcom/iflytek/viafly/ui/reddot/DotEntity;
    move-object v0, v1

    .line 33
    .local v0, "dotEntity":Lcom/iflytek/viafly/ui/reddot/DotEntity;
    if-eqz v0, :cond_2

    .line 41
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/reddot/DotEntity;->getDotPosition()Lcom/iflytek/viafly/ui/reddot/DotEntity$DotPostion;

    move-result-object v9

    sget-object v10, Lcom/iflytek/viafly/ui/reddot/DotEntity$DotPostion;->DOT_RIFHT:Lcom/iflytek/viafly/ui/reddot/DotEntity$DotPostion;

    if-ne v9, v10, :cond_2

    .line 42
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/reddot/DotEntity;->getShowFlag()Z

    move-result v9

    if-eqz v9, :cond_4

    move v5, v6

    .line 44
    .local v5, "visibility":I
    :goto_2
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/reddot/DotEntity;->getShowFlag()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 45
    const/4 v3, 0x1

    .line 47
    :cond_3
    iget-object v9, p0, Lcom/iflytek/viafly/ui/reddot/TitleRedDotHelper;->mHomeTitle:Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;

    new-instance v10, Lcom/iflytek/viafly/ui/reddot/TitleRedDotHelper$1;

    invoke-direct {v10, p0}, Lcom/iflytek/viafly/ui/reddot/TitleRedDotHelper$1;-><init>(Lcom/iflytek/viafly/ui/reddot/TitleRedDotHelper;)V

    invoke-virtual {v9, v10}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .end local v5    # "visibility":I
    :cond_4
    move v5, v7

    .line 42
    goto :goto_2

    .line 67
    .end local v0    # "dotEntity":Lcom/iflytek/viafly/ui/reddot/DotEntity;
    .end local v1    # "item":Lcom/iflytek/viafly/ui/reddot/DotEntity;
    :cond_5
    if-eqz v3, :cond_6

    move v4, v6

    .line 78
    .local v4, "rightVisibility":I
    :goto_3
    goto :goto_0

    .end local v4    # "rightVisibility":I
    :cond_6
    move v4, v7

    .line 67
    goto :goto_3
.end method


# virtual methods
.method public onInitFinish(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/ui/reddot/DotEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/ui/reddot/DotEntity;>;"
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/reddot/TitleRedDotHelper;->showTitleDot(Ljava/util/List;)V

    .line 88
    return-void
.end method

.method public onUpdateRedDot(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/ui/reddot/DotEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/ui/reddot/DotEntity;>;"
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/reddot/TitleRedDotHelper;->showTitleDot(Ljava/util/List;)V

    .line 83
    return-void
.end method
