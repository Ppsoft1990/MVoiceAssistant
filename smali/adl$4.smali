.class Ladl$4;
.super Ljava/lang/Object;
.source "SpecificBroadcastSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ladl;->i(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

.field final synthetic c:Ladl;


# direct methods
.method constructor <init>(Ladl;ILcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Ladl;

    .prologue
    .line 867
    iput-object p1, p0, Ladl$4;->c:Ladl;

    iput p2, p0, Ladl$4;->a:I

    iput-object p3, p0, Ladl$4;->b:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 871
    iget-object v0, p0, Ladl$4;->c:Ladl;

    iget v1, p0, Ladl$4;->a:I

    invoke-virtual {v0, v1}, Ladl;->h(I)V

    .line 872
    iget-object v0, p0, Ladl$4;->b:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->dismiss()V

    .line 873
    return-void
.end method
