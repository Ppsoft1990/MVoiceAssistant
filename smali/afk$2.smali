.class Lafk$2;
.super Ljava/lang/Object;
.source "ListenMessageItemDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lafk;->a(Lady;Laee;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lafk;


# direct methods
.method constructor <init>(Lafk;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lafk;

    .prologue
    .line 90
    iput-object p1, p0, Lafk$2;->c:Lafk;

    iput-object p2, p0, Lafk$2;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lafk$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    iget-object v0, p0, Lafk$2;->c:Lafk;

    iget-object v1, p0, Lafk$2;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lafk$2;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lafk;->a(Lafk;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 94
    return-void
.end method
