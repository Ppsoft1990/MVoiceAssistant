.class public Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;
.super Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
.source "LxDirectWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;

.field private p:Lrl;

.field private q:Lcom/iflytek/framework/business/components/SynthesizeComponents;

.field private r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;Lrl;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "webinfo"    # Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;
    .param p3, "webTtsStateListener"    # Lrl;

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;-><init>(Landroid/content/Context;)V

    .line 26
    const-string/jumbo v0, "LxDirectWebView"

    iput-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->a:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->p:Lrl;

    .line 32
    iput v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->r:I

    .line 36
    if-eqz p2, :cond_0

    .line 37
    iget-object v0, p2, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;->mSpeechText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->e:Z

    .line 44
    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->b:Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;

    .line 46
    if-nez p3, :cond_3

    .line 47
    new-instance v0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView$1;

    invoke-direct {v0, p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView$1;-><init>(Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;)V

    iput-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->p:Lrl;

    .line 89
    :goto_1
    const-string/jumbo v0, "WidgetMMPContainerComponents"

    new-instance v1, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView$a;

    invoke-direct {v1, p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView$a;-><init>(Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;)V

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->registerComponents(Ljava/lang/String;Lcom/iflytek/mmp/core/componentsManager/Components;)V

    .line 91
    if-eqz p2, :cond_1

    .line 92
    iget-object v0, p2, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->loadUrl(Ljava/lang/String;)V

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->getTtsComponents()Lcom/iflytek/framework/business/components/SynthesizeComponents;

    .line 95
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->q:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->p:Lrl;

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->setComponentListener(Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;)V

    .line 96
    return-void

    .line 41
    :cond_2
    iput-boolean v1, p2, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;->mIsVoiceResult:Z

    goto :goto_0

    .line 85
    :cond_3
    iput-object p3, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->p:Lrl;

    goto :goto_1
.end method

.method static synthetic a(Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a_()V
    .locals 3

    .prologue
    .line 99
    iget v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->r:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->b:Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->b:Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;

    iget-boolean v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;->mIsVoiceResult:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->b:Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;

    iget-boolean v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;->mTextSearchMode:Z

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->q:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    if-eqz v0, :cond_0

    .line 101
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_SPEECH_DIALOG_MODE"

    invoke-virtual {v0, v1}, Lil;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->q:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->b:Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;

    iget-object v1, v1, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;->mSpeechText:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->speak(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 106
    :cond_0
    iget v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->r:I

    .line 107
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 135
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "speakBtnClick(),getTtsState() == "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->p:Lrl;

    invoke-virtual {v2}, Lrl;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " , mWebInfo == null is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->b:Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->b:Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->p:Lrl;

    invoke-virtual {v0}, Lrl;->a()I

    move-result v0

    if-nez v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->q:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->b:Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;

    iget-object v1, v1, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;->mSpeechText:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->speak(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 143
    :cond_0
    :goto_1
    return-void

    .line 135
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->q:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    invoke-virtual {v0}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->stopAll()V

    goto :goto_1
.end method

.method protected final getTtsComponents()Lcom/iflytek/framework/business/components/SynthesizeComponents;
    .locals 2

    .prologue
    .line 123
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->q:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    if-nez v1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->getComponentsMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 125
    .local v0, "comHashMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/iflytek/mmp/core/componentsManager/Components;>;"
    if-eqz v0, :cond_0

    const-class v1, Lcom/iflytek/framework/business/components/SynthesizeComponents;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    const-class v1, Lcom/iflytek/framework/business/components/SynthesizeComponents;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/framework/business/components/SynthesizeComponents;

    iput-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->q:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    .line 130
    .end local v0    # "comHashMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/iflytek/mmp/core/componentsManager/Components;>;"
    :cond_0
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->q:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    return-object v1
.end method

.method public getWebInfo()Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->b:Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;

    return-object v0
.end method

.method public getWebTtsStateListener()Lrl;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->p:Lrl;

    return-object v0
.end method

.method public setSpeatkButtonShow(Z)V
    .locals 0
    .param p1, "isShow"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->e:Z

    .line 119
    return-void
.end method
