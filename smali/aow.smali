.class public Laow;
.super Landroid/widget/BaseAdapter;
.source "ContactInfoHeaderAdapter.java"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "contaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Laow;->a:Ljava/util/ArrayList;

    .line 23
    iput-object p2, p0, Laow;->c:Landroid/content/Context;

    .line 24
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Laow;->b:Landroid/view/LayoutInflater;

    .line 25
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Laow;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 34
    iget-object v0, p0, Laow;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 39
    iget-object v0, p0, Laow;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-virtual {v0}, Lcom/iflytek/base/contacts/entities/ContactItem;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 44
    if-nez p2, :cond_0

    .line 45
    iget-object v3, p0, Laow;->b:Landroid/view/LayoutInflater;

    const v4, 0x7f03007b

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/mms/ui/ContactInfoView;

    .line 46
    .local v2, "view":Lcom/iflytek/viafly/mms/ui/ContactInfoView;
    move-object p2, v2

    .line 49
    .end local v2    # "view":Lcom/iflytek/viafly/mms/ui/ContactInfoView;
    :cond_0
    iget-object v3, p0, Laow;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-virtual {v3}, Lcom/iflytek/base/contacts/entities/ContactItem;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/viafly/util/IflyStringUtil;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "newHeader":Ljava/lang/String;
    if-nez p1, :cond_1

    move-object v3, p2

    .line 51
    check-cast v3, Lcom/iflytek/viafly/mms/ui/ContactInfoView;

    iget-object v5, p0, Laow;->c:Landroid/content/Context;

    iget-object v4, p0, Laow;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-virtual {v3, v5, v0, v4}, Lcom/iflytek/viafly/mms/ui/ContactInfoView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/base/contacts/entities/ContactItem;)V

    .line 60
    :goto_0
    return-object p2

    .line 53
    :cond_1
    iget-object v3, p0, Laow;->a:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-virtual {v3}, Lcom/iflytek/base/contacts/entities/ContactItem;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/viafly/util/IflyStringUtil;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "oldHeader":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, p2

    .line 55
    check-cast v3, Lcom/iflytek/viafly/mms/ui/ContactInfoView;

    iget-object v5, p0, Laow;->c:Landroid/content/Context;

    iget-object v4, p0, Laow;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-virtual {v3, v5, v6, v4}, Lcom/iflytek/viafly/mms/ui/ContactInfoView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/base/contacts/entities/ContactItem;)V

    goto :goto_0

    :cond_2
    move-object v3, p2

    .line 57
    check-cast v3, Lcom/iflytek/viafly/mms/ui/ContactInfoView;

    iget-object v5, p0, Laow;->c:Landroid/content/Context;

    iget-object v4, p0, Laow;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-virtual {v3, v5, v0, v4}, Lcom/iflytek/viafly/mms/ui/ContactInfoView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/base/contacts/entities/ContactItem;)V

    goto :goto_0
.end method
