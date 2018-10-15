.class Layk$a;
.super Landroid/widget/BaseAdapter;
.source "TranslateModeViewHeler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Layk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Layk$b;

.field final synthetic b:Layk;


# direct methods
.method private constructor <init>(Layk;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Layk$a;->b:Layk;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Layk;Layk$1;)V
    .locals 0
    .param p1, "x0"    # Layk;
    .param p2, "x1"    # Layk$1;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Layk$a;-><init>(Layk;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Layk$a;->b:Layk;

    invoke-static {v0}, Layk;->a(Layk;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 172
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 177
    if-eqz p2, :cond_0

    .line 178
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layk$b;

    iput-object v0, p0, Layk$a;->a:Layk$b;

    .line 186
    :goto_0
    iget-object v0, p0, Layk$a;->a:Layk$b;

    iget-object v1, v0, Layk$b;->a:Landroid/widget/TextView;

    iget-object v0, p0, Layk$a;->b:Layk;

    invoke-static {v0}, Layk;->a(Layk;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Layk$a;->a:Layk$b;

    iget-object v1, v0, Layk$b;->b:Landroid/widget/TextView;

    iget-object v0, p0, Layk$a;->b:Layk;

    invoke-static {v0}, Layk;->a(Layk;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    return-object p2

    .line 180
    :cond_0
    iget-object v0, p0, Layk$a;->b:Layk;

    invoke-static {v0}, Layk;->c(Layk;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030144

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 181
    new-instance v0, Layk$b;

    invoke-direct {v0, v2}, Layk$b;-><init>(Layk$1;)V

    iput-object v0, p0, Layk$a;->a:Layk$b;

    .line 182
    iget-object v1, p0, Layk$a;->a:Layk$b;

    const v0, 0x7f0b072e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Layk$b;->a:Landroid/widget/TextView;

    .line 183
    iget-object v1, p0, Layk$a;->a:Layk$b;

    const v0, 0x7f0b072f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Layk$b;->b:Landroid/widget/TextView;

    .line 184
    iget-object v0, p0, Layk$a;->a:Layk$b;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method
