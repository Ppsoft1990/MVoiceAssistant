.class Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$ContactSelectAdapter;
.super Lcom/iflytek/viafly/ui/ItemAdapter;
.source "ContactSelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContactSelectAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iflytek/viafly/ui/ItemAdapter",
        "<",
        "Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$ListItemAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field itemsData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$ListItemAdapter;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;


# direct methods
.method protected constructor <init>(Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;Landroid/content/Context;Ljava/util/List;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "layoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$ListItemAdapter;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$ListItemAdapter;>;"
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$ContactSelectAdapter;->this$0:Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;

    .line 141
    invoke-direct {p0, p2, p3, p4}, Lcom/iflytek/viafly/ui/ItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 142
    iput-object p3, p0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$ContactSelectAdapter;->itemsData:Ljava/util/List;

    .line 143
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 147
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$ContactSelectAdapter;->getItem(I)Ltf;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$ListItemAdapter;

    .line 149
    .local v0, "itemAdapter":Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$ListItemAdapter;
    if-nez p2, :cond_0

    .line 150
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$ContactSelectAdapter;->getConvertView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 153
    :cond_0
    const v4, 0x7f0b037b

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 154
    .local v1, "locationTv":Landroid/widget/TextView;
    iget-object v4, v0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$ListItemAdapter;->location:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 155
    iget-object v4, v0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$ListItemAdapter;->location:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    :goto_0
    const v4, 0x7f0b037a

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 162
    .local v3, "phoneNumberTv":Landroid/widget/TextView;
    iget-object v4, v0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$ListItemAdapter;->showNumber:Landroid/text/SpannableString;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    const v4, 0x7f0b037c

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XCheckBox;

    .line 165
    .local v2, "mCheckBox":Lcom/iflytek/base/skin/customView/XCheckBox;
    invoke-virtual {v2, v5}, Lcom/iflytek/base/skin/customView/XCheckBox;->setClickable(Z)V

    .line 166
    iget-boolean v4, v0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$ListItemAdapter;->flagChecked:Z

    invoke-virtual {v2, v4}, Lcom/iflytek/base/skin/customView/XCheckBox;->setChecked(Z)V

    .line 168
    return-object p2

    .line 158
    .end local v2    # "mCheckBox":Lcom/iflytek/base/skin/customView/XCheckBox;
    .end local v3    # "phoneNumberTv":Landroid/widget/TextView;
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
