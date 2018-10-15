.class public abstract Lcom/iflytek/viafly/ui/dialog/DialogView;
.super Landroid/widget/LinearLayout;
.source "DialogView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DialogView"


# instance fields
.field private bodyView:Landroid/view/View;

.field private bottomView:Landroid/view/View;

.field protected mContext:Landroid/content/Context;

.field private titleView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DialogView;->titleView:Landroid/view/View;

    .line 20
    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DialogView;->bodyView:Landroid/view/View;

    .line 21
    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DialogView;->bottomView:Landroid/view/View;

    .line 25
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/DialogView;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method protected abstract createBodyView()Landroid/view/View;
.end method

.method protected abstract createBottomView()Landroid/view/View;
.end method

.method protected abstract createTitleView()Landroid/view/View;
.end method

.method protected getBodyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DialogView;->bodyView:Landroid/view/View;

    return-object v0
.end method

.method protected getBottomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DialogView;->bottomView:Landroid/view/View;

    return-object v0
.end method

.method protected getTitleView()Landroid/view/View;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DialogView;->titleView:Landroid/view/View;

    return-object v0
.end method

.method protected final setView()V
    .locals 3

    .prologue
    .line 29
    const-string/jumbo v0, "DialogView"

    const-string/jumbo v1, "setView()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/dialog/DialogView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/dialog/DialogView;->setOrientation(I)V

    .line 32
    const-string/jumbo v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/dialog/DialogView;->setBackgroundColor(I)V

    .line 34
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/DialogView;->createTitleView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DialogView;->titleView:Landroid/view/View;

    .line 35
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/DialogView;->createBodyView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DialogView;->bodyView:Landroid/view/View;

    .line 36
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/DialogView;->createBottomView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DialogView;->bottomView:Landroid/view/View;

    .line 38
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DialogView;->titleView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/dialog/DialogView;->addView(Landroid/view/View;)V

    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DialogView;->bodyView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/dialog/DialogView;->addView(Landroid/view/View;)V

    .line 40
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DialogView;->bottomView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/dialog/DialogView;->addView(Landroid/view/View;)V

    .line 41
    return-void
.end method
