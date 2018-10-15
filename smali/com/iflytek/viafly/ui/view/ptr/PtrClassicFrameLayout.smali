.class public Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;
.super Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;
.source "PtrClassicFrameLayout.java"


# instance fields
.field private mPtrClassicFooter:Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultFooter;

.field private mPtrClassicHeader:Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;->initViews()V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;->initViews()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;->initViews()V

    .line 24
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;->mPtrClassicHeader:Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;

    .line 28
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;->mPtrClassicHeader:Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;->setHeaderView(Landroid/view/View;)V

    .line 29
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;->mPtrClassicHeader:Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;->addPtrUIHandler(Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;)V

    .line 30
    new-instance v0, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultFooter;

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultFooter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;->mPtrClassicFooter:Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultFooter;

    .line 31
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;->mPtrClassicFooter:Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultFooter;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;->setFooterView(Landroid/view/View;)V

    .line 32
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;->mPtrClassicFooter:Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultFooter;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;->addPtrUIHandler(Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getHeader()Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;->mPtrClassicHeader:Lcom/iflytek/viafly/ui/view/ptr/PtrClassicDefaultHeader;

    return-object v0
.end method
