.class public Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;
.super Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
.source "HomeAudioResourceCardView.java"

# interfaces
.implements Laij;
.implements Laiw;


# instance fields
.field private o:Laiu;

.field private p:Landroid/os/Handler;

.field private final q:I

.field private final r:I

.field private final s:I

.field private t:Landroid/widget/LinearLayout;

.field private u:Laiy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Laic;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "homeCardItem"    # Laic;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;-><init>(Landroid/content/Context;Laic;)V

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->q:I

    .line 38
    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->r:I

    .line 39
    const/4 v0, 0x3

    iput v0, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->s:I

    .line 45
    invoke-virtual {p0, p0}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->setCallBack(Laij;)V

    .line 46
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->g()V

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->o()V

    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 2
    .param p1, "fromNet"    # Z
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->o:Laiu;

    invoke-virtual {v0, p2}, Laiu;->a(Ljava/lang/String;)Laiy;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->u:Laiy;

    .line 139
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->u:Laiy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->u:Laiy;

    invoke-virtual {v0}, Laiy;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 140
    :cond_0
    const-string/jumbo v0, "HomeAudioResourceCardView"

    const-string/jumbo v1, "close card"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->k()V

    .line 151
    :cond_1
    :goto_0
    return-void

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->p:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 146
    :cond_3
    if-eqz p1, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->i()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;)Laiu;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->o:Laiu;

    return-object v0
.end method

.method private getContentView()Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    .line 59
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 60
    .local v0, "contentView":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 61
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_0

    .line 62
    new-instance v2, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioItemView;

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioItemView;-><init>(Landroid/content/Context;)V

    .line 63
    .local v2, "itemView":Lcom/iflytek/viafly/homepage/audioresource/HomeAudioItemView;
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    .end local v2    # "itemView":Lcom/iflytek/viafly/homepage/audioresource/HomeAudioItemView;
    :cond_0
    return-object v0
.end method

.method private n()V
    .locals 3

    .prologue
    .line 112
    new-instance v0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView$1;-><init>(Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->p:Landroid/os/Handler;

    .line 127
    new-instance v0, Laiu;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->c:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Laiu;-><init>(Laiw;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->o:Laiu;

    .line 128
    return-void
.end method

.method private o()V
    .locals 6

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->h()V

    .line 182
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->u:Laiy;

    if-nez v4, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->k()V

    .line 206
    :cond_0
    return-void

    .line 185
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->getDefaultParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->u:Laiy;

    invoke-virtual {v4}, Laiy;->b()Ljava/util/List;

    move-result-object v0

    .line 187
    .local v0, "audioItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v4, 0x3

    if-ge v2, v4, :cond_0

    .line 188
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 189
    .local v3, "itemView":Landroid/view/View;
    instance-of v4, v3, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioItemView;

    if-eqz v4, :cond_2

    .line 190
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    move-object v4, v3

    .line 191
    check-cast v4, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioItemView;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;

    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioItemView;->setData(Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;)V

    .line 192
    move v1, v2

    .line 193
    .local v1, "finalIndex":I
    new-instance v4, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView$2;

    invoke-direct {v4, p0, v1}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView$2;-><init>(Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    .end local v1    # "finalIndex":I
    .end local v3    # "itemView":Landroid/view/View;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    .restart local v3    # "itemView":Landroid/view/View;
    :cond_3
    check-cast v3, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioItemView;

    .end local v3    # "itemView":Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioItemView;->setData(Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;)V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 165
    const-string/jumbo v0, "HomeAudioResourceCardView"

    const-string/jumbo v1, "clickSetting"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method

.method public a(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 158
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->p:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 161
    :cond_0
    return-void
.end method

.method public a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .prologue
    .line 86
    const-string/jumbo v0, "HomeAudioResourceCardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    if-nez p1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    sget-object v0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView$3;->a:[I

    invoke-virtual {p1}, Lcom/iflytek/viafly/homepage/base/HomeEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->o:Laiu;

    invoke-virtual {v0}, Laiu;->j()V

    goto :goto_0

    .line 96
    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->f()V

    goto :goto_0

    .line 101
    :pswitch_2
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->l()V

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->c(Ljava/lang/String;)I

    .line 133
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->a(ZLjava/lang/String;)V

    .line 134
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 170
    const-string/jumbo v0, "HomeAudioResourceCardView"

    const-string/jumbo v1, "clickMore"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 176
    const-string/jumbo v0, "HomeAudioResourceCardView"

    const-string/jumbo v1, "clickRefresh"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->f()V

    .line 178
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->b(I)V

    .line 52
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->getContentView()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->t:Landroid/widget/LinearLayout;

    .line 53
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->a(Landroid/widget/LinearLayout;)V

    .line 54
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->j()V

    .line 55
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->n()V

    .line 56
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->getCache()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "cache":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->a(ZLjava/lang/String;)V

    .line 72
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->o:Laiu;

    invoke-virtual {v0}, Laiu;->g()V

    .line 77
    return-void
.end method

.method public setHomeResultCallback(Lail;)V
    .locals 1
    .param p1, "resultListener"    # Lail;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;->o:Laiu;

    invoke-virtual {v0, p1}, Laiu;->a(Lail;)V

    .line 82
    return-void
.end method
