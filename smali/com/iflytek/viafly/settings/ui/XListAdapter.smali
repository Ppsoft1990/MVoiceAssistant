.class public Lcom/iflytek/viafly/settings/ui/XListAdapter;
.super Lcom/iflytek/viafly/settings/ui/ItemAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iflytek/viafly/settings/ui/ItemAdapter",
        "<",
        "Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/viafly/settings/ui/ItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/settings/ui/XListAdapter;->get(I)Lcom/iflytek/viafly/settings/ui/Item;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
