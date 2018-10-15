.class public Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;
.super Landroid/widget/RelativeLayout;
.source "HomeTitleContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

.field private c:Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer$a;

.field private d:Lcom/iflytek/viafly/ui/reddot/TitleRedDotHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->a(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->a:Landroid/content/Context;

    .line 43
    new-instance v0, Lcom/iflytek/viafly/ui/reddot/TitleRedDotHelper;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ui/reddot/TitleRedDotHelper;-><init>(Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;)V

    iput-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->d:Lcom/iflytek/viafly/ui/reddot/TitleRedDotHelper;

    .line 44
    invoke-static {p1}, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->d:Lcom/iflytek/viafly/ui/reddot/TitleRedDotHelper;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;->initDelay(Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$OnUpdateRedDotListener;)V

    .line 46
    new-instance v0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->b:Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    .line 47
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->b:Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->addView(Landroid/view/View;)V

    .line 48
    invoke-static {}, Lrm;->a()Lrm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lrm;->a(Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;)V

    .line 49
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public a(II)V
    .locals 3
    .param p1, "progress"    # I
    .param p2, "modeAnimation"    # I

    .prologue
    .line 110
    const-string/jumbo v0, "HomeTitleContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLoadProgress | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->b:Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->getFluentPageTilte()Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->a(II)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lrn;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "titleKind"    # Lrn;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 62
    const-string/jumbo v0, "HomeTitleContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showFluentPageTitle | title = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " titleKind = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->getFluentPageTilte()Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->setVisibility(I)V

    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->getFluentPageTilte()Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->setTitle(Ljava/lang/String;)V

    .line 70
    :goto_0
    invoke-virtual {p2}, Lrn;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->getFluentPageTilte()Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->getRefreshAndCancelContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 75
    :goto_1
    invoke-virtual {p2}, Lrn;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->getFluentPageTilte()Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->getSpeakBtn()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 80
    :goto_2
    return-void

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->getFluentPageTilte()Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->getFluentPageTilte()Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->getRefreshAndCancelContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 78
    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->getFluentPageTilte()Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->getSpeakBtn()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method public getEventListener()Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer$a;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->c:Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer$a;

    return-object v0
.end method

.method public getFluentPageTilte()Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->b:Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    if-nez v0, :cond_0

    .line 97
    const-string/jumbo v0, "HomeTitleContainer"

    const-string/jumbo v1, "showFluentPageTilte | "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->b:Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    .line 99
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->b:Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->addView(Landroid/view/View;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->b:Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    return-object v0
.end method

.method public setFluentPageTitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 91
    const-string/jumbo v0, "HomeTitleContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFluentPageTitle | title = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->getFluentPageTilte()Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->setTitle(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public setFluentPageTitleNeedSpeak(Z)V
    .locals 2
    .param p1, "needSpeek"    # Z

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->getFluentPageTilte()Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->getSpeakBtn()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->getFluentPageTilte()Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->getSpeakBtn()Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setHomeEventListener(Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer$a;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->c:Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer$a;

    .line 53
    return-void
.end method
