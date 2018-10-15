.class final Laqc$2;
.super Ljava/lang/Object;
.source "MusicCoverHelper.java"

# interfaces
.implements Laqc$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laqc;->a(Landroid/widget/RemoteViews;Ljava/lang/String;Laqc$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Laqc$a;


# direct methods
.method constructor <init>(Laqc$a;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Laqc$2;->a:Laqc$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Laqc$2;->a:Laqc$a;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Laqc$2;->a:Laqc$a;

    invoke-interface {v0}, Laqc$a;->a()V

    .line 94
    :cond_0
    return-void
.end method
