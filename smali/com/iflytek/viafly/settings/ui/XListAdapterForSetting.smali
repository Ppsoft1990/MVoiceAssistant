.class public Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;
.super Lcom/iflytek/viafly/settings/ui/ItemAdapter;
.source "XListAdapterForSetting.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iflytek/viafly/settings/ui/ItemAdapter",
        "<",
        "Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Context;
    .param p3, "arg2"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p2, "arg1":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/viafly/settings/ui/ItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 14
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/settings/ui/XListAdapterForSetting;->get(I)Lcom/iflytek/viafly/settings/ui/Item;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
