.class public Lcom/migu/voiceads/utils/browser/MIGUBrowser;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/migu/voiceads/utils/browser/MIGUBrowser$a;
    }
.end annotation


# static fields
.field private static k:Lcom/migu/voiceads/utils/browser/f;


# instance fields
.field a:Landroid/webkit/WebViewClient;

.field b:Landroid/webkit/WebChromeClient;

.field c:Lcom/migu/voiceads/utils/e;

.field private d:Landroid/webkit/WebView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/TextView;

.field private i:I

.field private j:Ljava/lang/StringBuffer;

.field private l:Ljava/lang/String;

.field private m:Landroid/os/Bundle;

.field private final n:I

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->m:Landroid/os/Bundle;

    const/16 v0, 0x11

    iput v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->n:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->o:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->p:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->q:Ljava/util/List;

    iput-object v1, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->r:Landroid/widget/ProgressBar;

    new-instance v0, Lcom/migu/voiceads/utils/browser/a;

    invoke-direct {v0, p0}, Lcom/migu/voiceads/utils/browser/a;-><init>(Lcom/migu/voiceads/utils/browser/MIGUBrowser;)V

    iput-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->a:Landroid/webkit/WebViewClient;

    new-instance v0, Lcom/migu/voiceads/utils/browser/b;

    invoke-direct {v0, p0}, Lcom/migu/voiceads/utils/browser/b;-><init>(Lcom/migu/voiceads/utils/browser/MIGUBrowser;)V

    iput-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->b:Landroid/webkit/WebChromeClient;

    new-instance v0, Lcom/migu/voiceads/utils/browser/c;

    invoke-direct {v0, p0}, Lcom/migu/voiceads/utils/browser/c;-><init>(Lcom/migu/voiceads/utils/browser/MIGUBrowser;)V

    iput-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->c:Lcom/migu/voiceads/utils/e;

    return-void
.end method

.method private a()V
    .locals 4

    const/4 v3, -0x1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0xf

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->h:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->h:Landroid/widget/TextView;

    const-string/jumbo v2, "< \u8fd4\u56de"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->h:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->h:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v1, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->h:Landroid/widget/TextView;

    const/4 v2, 0x2

    div-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->g:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->h:Landroid/widget/TextView;

    new-instance v1, Lcom/migu/voiceads/utils/browser/d;

    invoke-direct {v1, p0}, Lcom/migu/voiceads/utils/browser/d;-><init>(Lcom/migu/voiceads/utils/browser/MIGUBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/migu/voiceads/utils/browser/MIGUBrowser;)V
    .locals 0

    invoke-direct {p0}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->b()V

    return-void
.end method

.method static synthetic a(Lcom/migu/voiceads/utils/browser/MIGUBrowser;I)V
    .locals 0

    iput p1, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->i:I

    return-void
.end method

.method static synthetic a(Lcom/migu/voiceads/utils/browser/MIGUBrowser;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->p:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/migu/voiceads/utils/browser/MIGUBrowser;Ljava/lang/StringBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->j:Ljava/lang/StringBuffer;

    return-void
.end method

.method static synthetic a(Lcom/migu/voiceads/utils/browser/MIGUBrowser;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->o:Z

    return-void
.end method

.method public static a(Lcom/migu/voiceads/utils/browser/f;)V
    .locals 0

    sput-object p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->k:Lcom/migu/voiceads/utils/browser/f;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/migu/voiceads/utils/browser/MIGUBrowser;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->q:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->r:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "http:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "https:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/migu/voiceads/utils/browser/MIGUBrowser;)Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->j:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method private c()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->l:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->m:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->m:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->finish()V

    return-void
.end method

.method static synthetic d(Lcom/migu/voiceads/utils/browser/MIGUBrowser;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/migu/voiceads/utils/browser/MIGUBrowser;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->o:Z

    return v0
.end method

.method static synthetic f(Lcom/migu/voiceads/utils/browser/MIGUBrowser;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->r:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic g(Lcom/migu/voiceads/utils/browser/MIGUBrowser;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/migu/voiceads/utils/browser/MIGUBrowser;)V
    .locals 0

    invoke-direct {p0}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->c()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    :try_start_0
    const-string/jumbo v0, "Ad_Android_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "MIGUBrowser progress:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->k:Lcom/migu/voiceads/utils/browser/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->j:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->j:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->k:Lcom/migu/voiceads/utils/browser/f;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->j:Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    iget v2, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->i:I

    invoke-interface {v0, v1, v2}, Lcom/migu/voiceads/utils/browser/f;->a(Ljava/lang/String;I)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->j:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    sput-object v0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->k:Lcom/migu/voiceads/utils/browser/f;

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->d:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "url_ad"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->d:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "url_ad"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->o:Z

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->d:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->r:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/16 v6, 0x11

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v5}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->requestWindowFeature(I)Z

    iput v4, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->i:I

    invoke-virtual {p0}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->l:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "actbundle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->m:Landroid/os/Bundle;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->e:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x1010078

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->r:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->r:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->r:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setId(I)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->f:Landroid/widget/TextView;

    const-string/jumbo v1, "\u70b9\u51fb\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->a()V

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->r:Landroid/widget/ProgressBar;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->d:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->e:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->d:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->setContentView(Landroid/view/View;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->c()V

    const-string/jumbo v0, "webview crash,Out of the current page!"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->setContentView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->f:Landroid/widget/TextView;

    const-string/jumbo v1, "\u9875\u9762\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u8fd4\u56de\u4e0a\u4e00\u9875\u9762\uff01"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->setContentView(Landroid/view/View;)V

    throw v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->c()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->d:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->d:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->a:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->d:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/migu/voiceads/utils/browser/MIGUBrowser$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/migu/voiceads/utils/browser/MIGUBrowser$a;-><init>(Lcom/migu/voiceads/utils/browser/MIGUBrowser;Lcom/migu/voiceads/utils/browser/MIGUBrowser$a;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->d:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "url_ad"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_2
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->c()V

    const-string/jumbo v0, "webview crash,Out of the current page!"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->f:Landroid/widget/TextView;

    const-string/jumbo v1, "\u9875\u9762\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u8fd4\u56de\u4e0a\u4e00\u9875\u9762\uff01"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method
