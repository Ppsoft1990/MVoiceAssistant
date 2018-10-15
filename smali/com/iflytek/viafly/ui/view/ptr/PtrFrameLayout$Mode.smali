.class public final enum Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;
.super Ljava/lang/Enum;
.source "PtrFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

.field public static final enum BOTH:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

.field public static final enum LOAD_MORE:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

.field public static final enum NONE:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

.field public static final enum REFRESH:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;->NONE:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

    new-instance v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

    const-string/jumbo v1, "REFRESH"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;->REFRESH:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

    new-instance v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

    const-string/jumbo v1, "LOAD_MORE"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;->LOAD_MORE:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

    new-instance v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

    const-string/jumbo v1, "BOTH"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;->BOTH:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

    sget-object v1, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;->NONE:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;->REFRESH:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;->LOAD_MORE:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;->BOTH:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;->$VALUES:[Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;->$VALUES:[Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

    return-object v0
.end method
