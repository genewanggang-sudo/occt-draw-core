export interface CadKernelModule {
  cwrap(
    ident: string,
    returnType: "string" | "number" | null,
    argTypes: Array<"string" | "number" | "array" | "boolean">
  ): (...args: unknown[]) => unknown;
  UTF8ToString(ptr: number): string;
  _occt_draw_core_project_name(): number;
  _occt_draw_core_engine_name(): number;
  _occt_draw_core_version_major(): number;
}

export interface CadKernelModuleOptions {
  locateFile?: (path: string, scriptDirectory: string) => string;
}

export default function createCadKernelModule(
  options?: CadKernelModuleOptions
): Promise<CadKernelModule>;
