.class public Laoy;
.super Lcom/iflytek/viafly/ui/ItemAdapter;
.source "FuzzySearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoy$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iflytek/viafly/ui/ItemAdapter",
        "<",
        "Lcom/iflytek/base/contacts/entities/ContactItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Laoy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laoy;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "layoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/viafly/ui/ItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 27
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 37
    sget-object v2, Laoy;->a:Ljava/lang/String;

    const-string/jumbo v3, "FuzzySearchAdapter | getView"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    if-nez p2, :cond_0

    .line 41
    new-instance v1, Laoy$a;

    invoke-direct {v1, p0, v4}, Laoy$a;-><init>(Laoy;Laoy$1;)V

    .line 42
    .local v1, "viewHolder":Laoy$a;
    invoke-virtual {p0, v4}, Laoy;->getConvertView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 43
    const v2, 0x7f0b0367

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v2, v1, Laoy$a;->a:Lcom/iflytek/base/skin/customView/XImageView;

    .line 44
    const v2, 0x7f0b0368

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Laoy$a;->b:Landroid/widget/TextView;

    .line 45
    const v2, 0x7f0b0369

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Laoy$a;->c:Landroid/widget/TextView;

    .line 46
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 51
    :goto_0
    invoke-virtual {p0, p1}, Laoy;->getItem(I)Ltf;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/contacts/entities/ContactItem;

    .line 52
    .local v0, "contactItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    iget-object v2, v1, Laoy$a;->a:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v3, "image.arrow_down"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomSrc(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 53
    iget-object v2, v1, Laoy$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v2, v1, Laoy$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-object p2

    .line 48
    .end local v0    # "contactItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    .end local v1    # "viewHolder":Laoy$a;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoy$a;

    .restart local v1    # "viewHolder":Laoy$a;
    goto :goto_0
.end method
