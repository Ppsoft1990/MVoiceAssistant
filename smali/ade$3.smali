.class Lade$3;
.super Ljava/lang/Object;
.source "WidgetSmsInputView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lade;->exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lade;


# direct methods
.method constructor <init>(Lade;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lade;

    .prologue
    .line 665
    iput-object p1, p0, Lade$3;->b:Lade;

    iput-object p2, p0, Lade$3;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 670
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lade;->h()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "----------------->>>position: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v8, p0, Lade$3;->a:Ljava/util/List;

    invoke-interface {v8, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/contacts/entities/ContactItem;

    .line 673
    .local v0, "contactItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 674
    .local v1, "contacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    invoke-virtual {v0}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "&"

    const-string/jumbo v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 676
    .local v5, "realNum":Ljava/lang/String;
    const-string/jumbo v8, "^"

    const-string/jumbo v9, ""

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 677
    iget-object v8, p0, Lade$3;->b:Lade;

    invoke-static {v8}, Lade;->h(Lade;)Lcom/iflytek/base/contacts/entities/ContactInfo;

    move-result-object v8

    iput-object v5, v8, Lcom/iflytek/base/contacts/entities/ContactInfo;->mNumber:Ljava/lang/String;

    .line 678
    iget-object v8, p0, Lade$3;->b:Lade;

    invoke-static {v8}, Lade;->i(Lade;)Lacr;

    move-result-object v8

    invoke-interface {v8, v1}, Lacr;->a(Ljava/util/ArrayList;)V

    .line 679
    invoke-virtual {v0}, Lcom/iflytek/base/contacts/entities/ContactItem;->i()Ljava/lang/String;

    move-result-object v7

    .line 681
    .local v7, "tagText":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v3

    .line 682
    .local v3, "mPhoneNumber":Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string/jumbo v8, ""

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v3}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->d(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 683
    const-string/jumbo v8, "^"

    const-string/jumbo v9, ""

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 684
    .local v4, "number":Ljava/lang/String;
    iget-object v8, p0, Lade$3;->b:Lade;

    iget-object v9, p0, Lade$3;->b:Lade;

    invoke-static {v9}, Lade;->b(Lade;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v4}, Lhd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lade;->a(Lade;Ljava/lang/String;)Ljava/lang/String;

    .line 685
    iget-object v8, p0, Lade$3;->b:Lade;

    invoke-static {v8}, Lade;->j(Lade;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lade$3;->b:Lade;

    invoke-static {v8}, Lade;->j(Lade;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 687
    :cond_0
    iget-object v8, p0, Lade$3;->b:Lade;

    const-string/jumbo v9, "\u56fa\u8bdd"

    invoke-static {v8, v9}, Lade;->a(Lade;Ljava/lang/String;)Ljava/lang/String;

    .line 700
    .end local v4    # "number":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v8, p0, Lade$3;->b:Lade;

    invoke-static {v8}, Lade;->k(Lade;)Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v2

    check-cast v2, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 701
    .local v2, "containerForMMP":Lcom/iflytek/framework/browser/localControlView/OperationView;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 703
    iget-object v8, p0, Lade$3;->b:Lade;

    invoke-static {v8}, Lade;->l(Lade;)Lafu;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 704
    iget-object v8, p0, Lade$3;->b:Lade;

    invoke-static {v8}, Lade;->l(Lade;)Lafu;

    move-result-object v8

    iget-object v9, p0, Lade$3;->b:Lade;

    invoke-static {v9}, Lade;->j(Lade;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v5}, Lafu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    :cond_2
    iget-object v8, p0, Lade$3;->b:Lade;

    invoke-static {v8}, Lade;->m(Lade;)Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->dismiss()V

    .line 712
    return-void

    .line 689
    .end local v2    # "containerForMMP":Lcom/iflytek/framework/browser/localControlView/OperationView;
    :cond_3
    if-eqz v3, :cond_4

    const-string/jumbo v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 691
    iget-object v8, p0, Lade$3;->b:Lade;

    const-string/jumbo v9, ""

    invoke-static {v8, v9}, Lade;->a(Lade;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 692
    :cond_4
    const-string/jumbo v8, "`"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 693
    const-string/jumbo v8, "`"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 694
    .local v6, "splitTexts":[Ljava/lang/String;
    iget-object v8, p0, Lade$3;->b:Lade;

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-static {v8, v9}, Lade;->a(Lade;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 696
    .end local v6    # "splitTexts":[Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lade$3;->b:Lade;

    const-string/jumbo v9, ""

    invoke-static {v8, v9}, Lade;->a(Lade;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
