.class public Lcom/iflytek/viafly/homepage/LxHomeTopBarView;
.super Landroid/widget/LinearLayout;
.source "LxHomeTopBarView.java"

# interfaces
.implements Lain;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/homepage/LxHomeTopBarView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Laio;

.field private i:Lcom/iflytek/viafly/player/base/PlayerBizType;

.field private final j:I

.field private final k:I

.field private final l:I

.field private m:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->j:I

    .line 88
    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->k:I

    .line 89
    const/4 v0, 0x3

    iput v0, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->l:I

    .line 90
    new-instance v0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/viafly/homepage/LxHomeTopBarView$1;-><init>(Lcom/iflytek/viafly/homepage/LxHomeTopBarView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->m:Landroid/os/Handler;

    .line 53
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->b()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->j:I

    .line 88
    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->k:I

    .line 89
    const/4 v0, 0x3

    iput v0, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->l:I

    .line 90
    new-instance v0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/viafly/homepage/LxHomeTopBarView$1;-><init>(Lcom/iflytek/viafly/homepage/LxHomeTopBarView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->m:Landroid/os/Handler;

    .line 58
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->b()V

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/LxHomeTopBarView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeTopBarView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/LxHomeTopBarView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeTopBarView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03009e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 63
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0b0419

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->a:Landroid/widget/LinearLayout;

    .line 64
    const v2, 0x7f0b041a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->b:Landroid/widget/ImageView;

    .line 65
    const v2, 0x7f0b041b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->c:Landroid/widget/TextView;

    .line 66
    const v2, 0x7f0b041c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->d:Landroid/widget/TextView;

    .line 67
    const v2, 0x7f0b041e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->e:Landroid/widget/ImageView;

    .line 68
    const v2, 0x7f0b041d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->f:Landroid/widget/ImageView;

    .line 69
    const v2, 0x7f0b041f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->g:Landroid/widget/ImageView;

    .line 71
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76
    .local v0, "topParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v1, v0}, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    invoke-static {}, Laio;->b()Laio;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->h:Laio;

    .line 78
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->h:Laio;

    invoke-virtual {v2, p0}, Laio;->a(Lain;)V

    .line 79
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->h:Laio;

    invoke-virtual {v2}, Laio;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->a:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 85
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->a:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 83
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->h:Laio;

    invoke-virtual {v2}, Laio;->g()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/iflytek/viafly/homepage/LxHomeTopBarView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeTopBarView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/viafly/homepage/LxHomeTopBarView;)Lcom/iflytek/viafly/player/base/PlayerBizType;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeTopBarView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->i:Lcom/iflytek/viafly/player/base/PlayerBizType;

    return-object v0
.end method

.method static synthetic e(Lcom/iflytek/viafly/homepage/LxHomeTopBarView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeTopBarView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/iflytek/viafly/homepage/LxHomeTopBarView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeTopBarView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/iflytek/viafly/homepage/LxHomeTopBarView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeTopBarView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic h(Lcom/iflytek/viafly/homepage/LxHomeTopBarView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeTopBarView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->g:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->m:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 169
    return-void
.end method

.method public a(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 155
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 156
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 157
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 158
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 159
    return-void
.end method

.method public a(Lcom/iflytek/viafly/player/base/PlayerBizType;)V
    .locals 0
    .param p1, "type"    # Lcom/iflytek/viafly/player/base/PlayerBizType;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->i:Lcom/iflytek/viafly/player/base/PlayerBizType;

    .line 164
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 143
    new-instance v0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/iflytek/viafly/homepage/LxHomeTopBarView$a;-><init>(Lcom/iflytek/viafly/homepage/LxHomeTopBarView;Lcom/iflytek/viafly/homepage/LxHomeTopBarView$1;)V

    .line 144
    .local v0, "model":Lcom/iflytek/viafly/homepage/LxHomeTopBarView$a;
    iput-object p1, v0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView$a;->a:Ljava/lang/String;

    .line 145
    iput-object p2, v0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView$a;->b:Ljava/lang/String;

    .line 146
    iput-object p3, v0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView$a;->c:Ljava/lang/String;

    .line 147
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 148
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 149
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 150
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->m:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 151
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 198
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT90007"

    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 199
    return-void

    .line 176
    :pswitch_1
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->h:Laio;

    invoke-virtual {v1}, Laio;->c()V

    .line 177
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 178
    .restart local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_position"

    const-string/jumbo v2, "play"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 181
    :pswitch_2
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->h:Laio;

    invoke-virtual {v1}, Laio;->c()V

    .line 182
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 183
    .restart local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_position"

    const-string/jumbo v2, "pause"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 186
    :pswitch_3
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->h:Laio;

    invoke-virtual {v1}, Laio;->d()V

    .line 187
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 188
    .restart local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_position"

    const-string/jumbo v2, "close"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 191
    :pswitch_4
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->h:Laio;

    invoke-virtual {v1}, Laio;->e()V

    .line 192
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 193
    .restart local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_position"

    const-string/jumbo v2, "item"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0419
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
