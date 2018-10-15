.class public Lcom/iflytek/viafly/smarthome/ui/SmartOperationTitle;
.super Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;
.source "SmartOperationTitle.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/iflytek/viafly/smarthome/ui/SmartOperationTitle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method public isNeedMenu()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method protected onClick(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 37
    return-void
.end method

.method protected setTitleName()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartOperationTitle;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, "\u667a\u80fd\u5bb6\u5c45"

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    return-void
.end method

.method protected setViewTag()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartOperationTitle;->mBackBtn:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const-string/jumbo v1, "tag_opetation_smarthome_title_back"

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setTag(Ljava/lang/Object;)V

    .line 32
    return-void
.end method
