.class public Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryChangeEvent;
.super Ljava/lang/Object;
.source "CategoryChangeEvent.java"


# instance fields
.field private cardCategoryItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private contentId:Ljava/lang/String;

.field private groupId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCardCategoryItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryChangeEvent;->cardCategoryItems:Ljava/util/List;

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryChangeEvent;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryChangeEvent;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public setCardCategoryItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "cardCategoryItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;>;"
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryChangeEvent;->cardCategoryItems:Ljava/util/List;

    .line 22
    return-void
.end method

.method public setContentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryChangeEvent;->contentId:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryChangeEvent;->groupId:Ljava/lang/String;

    .line 16
    return-void
.end method
