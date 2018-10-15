.class public Ladm;
.super Landroid/widget/BaseAdapter;
.source "SpecificVoiceAdapter.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/dial/specific/SpecificVoice;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ladj;

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    const-string/jumbo v0, "SpecificVoiceAdapter"

    iput-object v0, p0, Ladm;->a:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "M"

    iput-object v0, p0, Ladm;->c:Ljava/lang/String;

    .line 40
    const/16 v0, 0x64

    iput v0, p0, Ladm;->g:I

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ladj;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Ladj;
    .param p4, "maxProgress"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/dial/specific/SpecificVoice;",
            ">;",
            "Ladj;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, "voiceResourceList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/dial/specific/SpecificVoice;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    const-string/jumbo v0, "SpecificVoiceAdapter"

    iput-object v0, p0, Ladm;->a:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "M"

    iput-object v0, p0, Ladm;->c:Ljava/lang/String;

    .line 40
    const/16 v0, 0x64

    iput v0, p0, Ladm;->g:I

    .line 46
    iput-object p1, p0, Ladm;->b:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Ladm;->d:Ljava/util/List;

    .line 48
    iput-object p3, p0, Ladm;->e:Ladj;

    .line 49
    iput p4, p0, Ladm;->g:I

    .line 50
    return-void
.end method

.method static synthetic a(Ladm;)Ladj;
    .locals 1
    .param p0, "x0"    # Ladm;

    .prologue
    .line 28
    iget-object v0, p0, Ladm;->e:Ladj;

    return-object v0
.end method

.method static synthetic b(Ladm;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Ladm;

    .prologue
    .line 28
    iget-object v0, p0, Ladm;->d:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .prologue
    const v3, 0x7f0c0090

    .line 188
    iget-object v1, p0, Ladm;->d:Ljava/util/List;

    if-nez v1, :cond_0

    .line 189
    const-string/jumbo v1, ""

    .line 209
    :goto_0
    return-object v1

    .line 191
    :cond_0
    iget-object v1, p0, Ladm;->d:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    .line 192
    invoke-virtual {v1}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->d()Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    move-result-object v0

    .line 193
    .local v0, "status":Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;
    iget-object v1, p0, Ladm;->f:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p0, Ladm;->f:Ljava/lang/String;

    iget-object v1, p0, Ladm;->d:Ljava/util/List;

    .line 194
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v1}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->i()Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    const v1, 0x7f0c0095

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 197
    :cond_1
    sget-object v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_INIT:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    if-ne v0, v1, :cond_2

    .line 198
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 199
    :cond_2
    sget-object v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_PAUSED:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    if-ne v0, v1, :cond_3

    .line 200
    const v1, 0x7f0c0093

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 201
    :cond_3
    sget-object v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_DOWNLOADING:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    if-ne v0, v1, :cond_4

    .line 202
    const v1, 0x7f0c0091

    .line 203
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 204
    :cond_4
    sget-object v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_ERROR:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    if-ne v0, v1, :cond_5

    .line 205
    const v1, 0x7f0c0094

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 206
    :cond_5
    sget-object v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_DOWNLOADED:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    if-ne v0, v1, :cond_6

    .line 207
    const v1, 0x7f0c0092

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 209
    :cond_6
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;Lcom/iflytek/viafly/dial/ui/view/TextProgressBar;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "progressBar"    # Lcom/iflytek/viafly/dial/ui/view/TextProgressBar;
    .param p3, "position"    # I

    .prologue
    .line 170
    if-eqz p2, :cond_1

    .line 171
    iget-object v2, p0, Ladm;->b:Landroid/content/Context;

    invoke-virtual {p0, v2, p3}, Ladm;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "statusString":Ljava/lang/String;
    const v0, -0x7c7c7d

    .line 173
    .local v0, "color":I
    const v2, 0x7f0c0094

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    const v0, -0x58f9d

    .line 178
    :cond_0
    :goto_0
    invoke-virtual {p2, v1, v0}, Lcom/iflytek/viafly/dial/ui/view/TextProgressBar;->a(Ljava/lang/String;I)V

    .line 180
    .end local v0    # "color":I
    .end local v1    # "statusString":Ljava/lang/String;
    :cond_1
    return-void

    .line 175
    .restart local v0    # "color":I
    .restart local v1    # "statusString":Ljava/lang/String;
    :cond_2
    const v2, 0x7f0c0095

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    const v0, -0xa47b30

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "selectedVoice"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Ladm;->f:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/dial/specific/SpecificVoice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/dial/specific/SpecificVoice;>;"
    iput-object p1, p0, Ladm;->d:Ljava/util/List;

    .line 227
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Ladm;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 61
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ladm;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 66
    iget-object v0, p0, Ladm;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ladm;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 74
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewgroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x5

    .line 80
    if-nez p2, :cond_1

    .line 81
    new-instance v1, Ladk;

    invoke-direct {v1}, Ladk;-><init>()V

    .line 82
    .local v1, "wrapper":Ladk;
    iget-object v2, p0, Ladm;->b:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 83
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030083

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 85
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 86
    invoke-virtual {p2, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 87
    const v2, 0x7f0b039f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Ladk;->a:Landroid/widget/ImageView;

    .line 88
    const v2, 0x7f0b039b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XFrameLayout;

    iput-object v2, v1, Ladk;->b:Lcom/iflytek/base/skin/customView/XFrameLayout;

    .line 89
    iget-object v2, v1, Ladk;->b:Lcom/iflytek/base/skin/customView/XFrameLayout;

    new-instance v3, Ladm$1;

    invoke-direct {v3, p0, p1}, Ladm$1;-><init>(Ladm;I)V

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v2, 0x7f0b039c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Ladk;->c:Landroid/widget/ImageView;

    .line 98
    const v2, 0x7f0b039e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/dial/ui/view/TextProgressBar;

    iput-object v2, v1, Ladk;->d:Lcom/iflytek/viafly/dial/ui/view/TextProgressBar;

    .line 99
    iget-object v2, v1, Ladk;->d:Lcom/iflytek/viafly/dial/ui/view/TextProgressBar;

    iget v3, p0, Ladm;->g:I

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/dial/ui/view/TextProgressBar;->setMax(I)V

    .line 100
    const v2, 0x7f0b03a0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Ladk;->e:Landroid/widget/TextView;

    .line 101
    const v2, 0x7f0b03a1

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Ladk;->f:Landroid/widget/TextView;

    .line 102
    const v2, 0x7f0b039d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Ladk;->g:Landroid/widget/ImageView;

    .line 103
    iget-object v2, v1, Ladk;->d:Lcom/iflytek/viafly/dial/ui/view/TextProgressBar;

    new-instance v3, Ladm$2;

    invoke-direct {v3, p0, p1}, Ladm$2;-><init>(Ladm;I)V

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/dial/ui/view/TextProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v3, v1, Ladk;->c:Landroid/widget/ImageView;

    .line 125
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v4

    iget-object v2, p0, Ladm;->d:Ljava/util/List;

    .line 126
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v2}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->c()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    .line 125
    invoke-virtual {v4, v2, v5}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 124
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v3, v1, Ladk;->e:Landroid/widget/TextView;

    iget-object v2, p0, Ladm;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v2}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    if-nez p1, :cond_0

    .line 129
    iget-object v2, v1, Ladk;->f:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    :goto_0
    iget-object v2, v1, Ladk;->b:Lcom/iflytek/base/skin/customView/XFrameLayout;

    .line 136
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v3

    const-string/jumbo v4, "white"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/ThemeManager;->getColor(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)I

    move-result v3

    .line 135
    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XFrameLayout;->setBackgroundColor(I)V

    .line 142
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_1
    iget-object v2, p0, Ladm;->b:Landroid/content/Context;

    iget-object v3, v1, Ladk;->d:Lcom/iflytek/viafly/dial/ui/view/TextProgressBar;

    invoke-virtual {p0, v2, v3, p1}, Ladm;->a(Landroid/content/Context;Lcom/iflytek/viafly/dial/ui/view/TextProgressBar;I)V

    .line 143
    iget-object v3, v1, Ladk;->d:Lcom/iflytek/viafly/dial/ui/view/TextProgressBar;

    iget-object v2, p0, Ladm;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    .line 144
    invoke-virtual {v2}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->e()I

    move-result v2

    .line 143
    invoke-virtual {v3, v2}, Lcom/iflytek/viafly/dial/ui/view/TextProgressBar;->setProgress(I)V

    .line 146
    iget-object v2, p0, Ladm;->f:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p0, Ladm;->f:Ljava/lang/String;

    iget-object v2, p0, Ladm;->d:Ljava/util/List;

    .line 147
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v2}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->i()Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 148
    iget-object v2, v1, Ladk;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    :goto_2
    iget-object v2, p0, Ladm;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v2}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->h()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 154
    iget-object v2, v1, Ladk;->g:Landroid/widget/ImageView;

    .line 155
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v3

    const-string/jumbo v4, "image.btn_diy_broadcast_stop_dial"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 154
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    :goto_3
    return-object p2

    .line 131
    .restart local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v2, v1, Ladk;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object v3, v1, Ladk;->f:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ladm;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    invoke-virtual {v2}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->b()F

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "M"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 139
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "wrapper":Ladk;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ladk;

    .restart local v1    # "wrapper":Ladk;
    goto/16 :goto_1

    .line 150
    :cond_2
    iget-object v2, v1, Ladk;->a:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 157
    :cond_3
    iget-object v2, v1, Ladk;->g:Landroid/widget/ImageView;

    .line 158
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v3

    const-string/jumbo v4, "image.btn_diy_broadcast_play_dial"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 157
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3
.end method
