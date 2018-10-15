.class public Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;
.super Landroid/widget/TextSwitcher;
.source "AutoVerticalScrollTextView.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView$a;

.field private c:Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/TextSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;->a:Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;->b()V

    .line 43
    return-void
.end method

.method private a(ZZ)Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView$a;
    .locals 4
    .param p1, "turnIn"    # Z
    .param p2, "turnUp"    # Z

    .prologue
    .line 59
    new-instance v0, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView$a;-><init>(Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;ZZ)V

    .line 60
    .local v0, "rotation":Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView$a;
    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView$a;->setDuration(J)V

    .line 61
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView$a;->setFillAfter(Z)V

    .line 62
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView$a;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 64
    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 47
    invoke-virtual {p0, p0}, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 49
    invoke-direct {p0, v1, v1}, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;->a(ZZ)Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView$a;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;->b:Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView$a;

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;->a(ZZ)Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView$a;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;->c:Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView$a;

    .line 52
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;->b:Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView$a;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 53
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;->c:Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView$a;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 55
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;->b:Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView$a;

    if-eq v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;->b:Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView$a;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;->c:Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView$a;

    if-eq v0, v1, :cond_1

    .line 89
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;->c:Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView$a;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 91
    :cond_1
    return-void
.end method

.method public makeView()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 71
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, "textView":Landroid/widget/TextView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 73
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 74
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 75
    const-string/jumbo v1, "#ccffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    return-object v0
.end method
