.class Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$6;
.super Ljava/lang/Object;
.source "SmsAddContactsActivity.java"

# interfaces
.implements Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->registerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 8
    .param p1, "index"    # I

    .prologue
    .line 577
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$1600(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 578
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$300(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Laox;

    move-result-object v2

    invoke-virtual {v2}, Laox;->a()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 579
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$1700(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 580
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-virtual {v2}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->onContactNumChanged()V

    .line 581
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$1602(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;Z)Z

    .line 605
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$300(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Laox;

    move-result-object v2

    invoke-virtual {v2}, Laox;->notifyDataSetChanged()V

    .line 606
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$300(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Laox;

    move-result-object v2

    invoke-virtual {v2}, Laox;->notifyDataSetInvalidated()V

    .line 607
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$1800(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)V

    .line 610
    return-void

    .line 583
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    iget-object v2, v2, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mAllContactItems:Ljava/util/List;

    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$1700(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 584
    const/4 v1, -0x1

    .line 585
    .local v1, "position":I
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    iget-object v2, v2, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mAllContactItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/contacts/entities/ContactItem;

    .line 586
    .local v0, "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    add-int/lit8 v1, v1, 0x1

    .line 587
    invoke-virtual {v0}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$1700(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-virtual {v2}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 588
    invoke-virtual {v0}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$1700(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-virtual {v2}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 589
    invoke-virtual {v0}, Lcom/iflytek/base/contacts/entities/ContactItem;->b()J

    move-result-wide v4

    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$1700(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-virtual {v2}, Lcom/iflytek/base/contacts/entities/ContactItem;->b()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_2

    .line 594
    .end local v0    # "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    :cond_3
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$300(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Laox;

    move-result-object v2

    invoke-virtual {v2}, Laox;->a()Ljava/util/HashSet;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 595
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$300(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Laox;

    move-result-object v2

    invoke-virtual {v2}, Laox;->a()Ljava/util/HashSet;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 597
    :cond_4
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$1700(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 598
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-virtual {v2}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->onContactNumChanged()V

    goto/16 :goto_0

    .line 599
    .end local v1    # "position":I
    :cond_5
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$300(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Laox;

    move-result-object v2

    invoke-virtual {v2}, Laox;->b()Ljava/util/HashSet;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$1700(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 600
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$1700(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 601
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-virtual {v2}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->onContactNumChanged()V

    .line 602
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$300(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Laox;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$6;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$1700(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Laox;->a(Ljava/util/List;)V

    goto/16 :goto_0
.end method
