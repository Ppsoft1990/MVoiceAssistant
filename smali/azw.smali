.class public Lazw;
.super Ljava/lang/Object;
.source "SoftBarUtil.java"


# static fields
.field private static a:Landroid/app/Activity;

.field private static b:Lazw;


# instance fields
.field private c:Landroid/view/View;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/view/View;

.field private f:Ljava/lang/Runnable;

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, Lazw;->g:I

    .line 35
    iput v0, p0, Lazw;->h:I

    .line 36
    iput v0, p0, Lazw;->i:I

    return-void
.end method

.method static synthetic a(Lazw;)I
    .locals 1
    .param p0, "x0"    # Lazw;

    .prologue
    .line 25
    iget v0, p0, Lazw;->g:I

    return v0
.end method

.method static synthetic a(Lazw;I)I
    .locals 0
    .param p0, "x0"    # Lazw;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lazw;->g:I

    return p1
.end method

.method public static a(Landroid/app/Activity;)Lazw;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 39
    sput-object p0, Lazw;->a:Landroid/app/Activity;

    .line 40
    sget-object v0, Lazw;->b:Lazw;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lazw;

    invoke-direct {v0}, Lazw;-><init>()V

    sput-object v0, Lazw;->b:Lazw;

    .line 43
    :cond_0
    sget-object v0, Lazw;->b:Lazw;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 152
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 153
    return-void
.end method

.method public static b(Landroid/app/Activity;)I
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 208
    .local v1, "rootView":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 209
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 210
    .local v0, "childCount":I
    if-lez v0, :cond_0

    .line 211
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "rootView":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 214
    .end local v0    # "childCount":I
    :goto_0
    return v2

    .restart local v1    # "rootView":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_0
.end method

.method static synthetic b(Lazw;)I
    .locals 1
    .param p0, "x0"    # Lazw;

    .prologue
    .line 25
    iget v0, p0, Lazw;->h:I

    return v0
.end method

.method static synthetic b(Lazw;I)I
    .locals 0
    .param p0, "x0"    # Lazw;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lazw;->h:I

    return p1
.end method

.method public static c(Landroid/app/Activity;)I
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 220
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 222
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 223
    invoke-static {p0}, Lazw;->b(Landroid/app/Activity;)I

    move-result v2

    .line 225
    .local v2, "usableHeight":I
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 226
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 227
    .local v1, "realHeight":I
    if-le v1, v2, :cond_0

    .line 228
    sub-int v3, v1, v2

    .line 230
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lazw;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lazw;

    .prologue
    .line 25
    iget-object v0, p0, Lazw;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lazw;)V
    .locals 0
    .param p0, "x0"    # Lazw;

    .prologue
    .line 25
    invoke-direct {p0}, Lazw;->f()V

    return-void
.end method

.method public static d(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 239
    invoke-static {p0}, Lazw;->e(Landroid/app/Activity;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Landroid/app/Activity;)I
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 247
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 252
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 254
    invoke-static {p0}, Lazw;->b(Landroid/app/Activity;)I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 255
    .local v1, "softInputHeight":I
    return v1
.end method

.method static synthetic e()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lazw;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Lazw;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lazw;

    .prologue
    .line 25
    iget-object v0, p0, Lazw;->f:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic f(Lazw;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lazw;

    .prologue
    .line 25
    iget-object v0, p0, Lazw;->c:Landroid/view/View;

    return-object v0
.end method

.method private f()V
    .locals 6

    .prologue
    const/16 v5, 0x64

    .line 160
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmcc.IFLY_SOFT_INPUT_HEIGHT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lil;->b(Ljava/lang/String;I)I

    move-result v0

    .line 161
    .local v0, "keyboardHeight":I
    iget-object v2, p0, Lazw;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 162
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, p0, Lazw;->i:I

    if-nez v2, :cond_0

    .line 164
    iput v5, p0, Lazw;->i:I

    .line 166
    :cond_0
    iget v2, p0, Lazw;->i:I

    if-gt v0, v2, :cond_1

    .line 168
    iget v2, p0, Lazw;->i:I

    if-ne v5, v2, :cond_2

    .line 169
    sget-object v2, Lazw;->a:Landroid/app/Activity;

    invoke-static {v2}, Lazw;->b(Landroid/app/Activity;)I

    move-result v2

    div-int/lit8 v0, v2, 0x3

    .line 174
    :cond_1
    :goto_0
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 175
    iget-object v2, p0, Lazw;->e:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    new-instance v3, Lqt;

    invoke-direct {v3, v0}, Lqt;-><init>(I)V

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 177
    return-void

    .line 171
    :cond_2
    iget v0, p0, Lazw;->i:I

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 183
    iget-object v1, p0, Lazw;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 184
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-nez v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v1, p0, Lazw;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 188
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 194
    iget-object v0, p0, Lazw;->c:Landroid/view/View;

    new-instance v1, Lazw$2;

    invoke-direct {v1, p0}, Lazw$2;-><init>(Lazw;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 204
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Lazw;
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 47
    iput-object p1, p0, Lazw;->c:Landroid/view/View;

    .line 48
    sget-object v0, Lazw;->b:Lazw;

    return-object v0
.end method

.method public a(Landroid/widget/EditText;)Lazw;
    .locals 1
    .param p1, "softView"    # Landroid/widget/EditText;

    .prologue
    .line 52
    iput-object p1, p0, Lazw;->d:Landroid/widget/EditText;

    .line 53
    sget-object v0, Lazw;->b:Lazw;

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;)Lazw;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 62
    iput-object p1, p0, Lazw;->f:Ljava/lang/Runnable;

    .line 63
    sget-object v0, Lazw;->b:Lazw;

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lazw;->i:I

    .line 72
    sget-object v0, Lazw;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lazw$1;

    invoke-direct {v1, p0}, Lazw$1;-><init>(Lazw;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 116
    return-void
.end method

.method public a(I)V
    .locals 0
    .param p1, "minToolHeight"    # I

    .prologue
    .line 67
    iput p1, p0, Lazw;->i:I

    .line 68
    return-void
.end method

.method public b(Landroid/view/View;)Lazw;
    .locals 1
    .param p1, "toolView"    # Landroid/view/View;

    .prologue
    .line 57
    iput-object p1, p0, Lazw;->e:Landroid/view/View;

    .line 58
    sget-object v0, Lazw;->b:Lazw;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 119
    iget-object v1, p0, Lazw;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 120
    .local v0, "toolVisible":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0}, Lazw;->g()V

    .line 123
    :cond_0
    iget-object v1, p0, Lazw;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 124
    sget-object v1, Lazw;->a:Landroid/app/Activity;

    iget-object v2, p0, Lazw;->d:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcom/iflytek/yd/util/UIUtil;->showSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 125
    if-eqz v0, :cond_1

    .line 126
    iget-object v1, p0, Lazw;->e:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 127
    invoke-direct {p0}, Lazw;->h()V

    .line 129
    :cond_1
    return-void

    .line 119
    .end local v0    # "toolVisible":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    sget-object v0, Lazw;->a:Landroid/app/Activity;

    invoke-static {v0}, Lazw;->d(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-direct {p0}, Lazw;->g()V

    .line 134
    iget-object v0, p0, Lazw;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 135
    invoke-virtual {p0}, Lazw;->d()V

    .line 136
    invoke-direct {p0}, Lazw;->h()V

    .line 140
    :goto_0
    invoke-direct {p0}, Lazw;->f()V

    .line 141
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lazw;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 144
    sget-object v1, Lazw;->a:Landroid/app/Activity;

    invoke-static {v1}, Lazw;->d(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    sget-object v1, Lazw;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 146
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lazw;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 148
    .end local v0    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method
