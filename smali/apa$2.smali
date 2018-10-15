.class Lapa$2;
.super Ljava/lang/Object;
.source "MmsContentSpeechDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapa;-><init>(Landroid/content/Context;Laov$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapa;


# direct methods
.method constructor <init>(Lapa;)V
    .locals 0
    .param p1, "this$0"    # Lapa;

    .prologue
    .line 43
    iput-object p1, p0, Lapa$2;->a:Lapa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 46
    const-string/jumbo v0, "smsclickmicdlgcancelbtn"

    invoke-static {v0}, Labv;->c(Ljava/lang/String;)V

    .line 47
    return-void
.end method
