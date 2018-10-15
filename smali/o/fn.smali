.class final Lo/fn;
.super Ljava/lang/Object;
.source "AuthImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lo/fl;


# direct methods
.method constructor <init>(Lo/fl;)V
    .locals 0

    iput-object p1, p0, Lo/fn;->a:Lo/fl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    const v0, 0x18f40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ad;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lo/fn;->a:Lo/fl;

    iget-object v1, v1, Lo/fl;->a:Lo/fh;

    invoke-static {v1, v0}, Lo/fh;->a(Lo/fh;Lorg/json/JSONObject;)V

    return-void
.end method
