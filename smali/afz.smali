.class public Lafz;
.super Ljava/lang/Object;
.source "SmsOfflineItemViewDelegate.java"

# interfaces
.implements Ladv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ladv",
        "<",
        "Laee;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 24
    const v0, 0x7f03006d

    return v0
.end method

.method public a(Lady;Laee;I)V
    .locals 5
    .param p1, "viewHolder"    # Lady;
    .param p2, "chatMessage"    # Laee;
    .param p3, "position"    # I

    .prologue
    .line 34
    instance-of v4, p2, Laga;

    if-eqz v4, :cond_0

    move-object v1, p2

    .line 35
    check-cast v1, Laga;

    .line 37
    .local v1, "offlineMessage":Laga;
    iget-object v2, v1, Laga;->a:Ladf;

    .line 39
    .local v2, "smsOfflineView":Ladf;
    if-nez v2, :cond_1

    .line 56
    .end local v1    # "offlineMessage":Laga;
    .end local v2    # "smsOfflineView":Ladf;
    :cond_0
    :goto_0
    return-void

    .line 43
    .restart local v1    # "offlineMessage":Laga;
    .restart local v2    # "smsOfflineView":Ladf;
    :cond_1
    invoke-virtual {p1}, Lady;->b()Landroid/view/View;

    move-result-object v3

    .line 46
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0b032f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 47
    .local v0, "contentView":Landroid/widget/ImageView;
    new-instance v4, Lafz$1;

    invoke-direct {v4, p0, v2}, Lafz$1;-><init>(Lafz;Ladf;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Lady;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 20
    check-cast p2, Laee;

    invoke-virtual {p0, p1, p2, p3}, Lafz;->a(Lady;Laee;I)V

    return-void
.end method

.method public a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .prologue
    .line 61
    return-void
.end method

.method public a(Laee;)Z
    .locals 1
    .param p1, "item"    # Laee;

    .prologue
    .line 29
    instance-of v0, p1, Laga;

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 20
    check-cast p1, Laee;

    invoke-virtual {p0, p1}, Lafz;->a(Laee;)Z

    move-result v0

    return v0
.end method
