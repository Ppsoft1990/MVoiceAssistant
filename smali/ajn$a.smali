.class Lajn$a;
.super Ljava/lang/Object;
.source "CityMatchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lajn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field final synthetic b:Lajn;


# direct methods
.method constructor <init>(Lajn;)V
    .locals 0
    .param p1, "this$0"    # Lajn;

    .prologue
    .line 82
    iput-object p1, p0, Lajn$a;->b:Lajn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
