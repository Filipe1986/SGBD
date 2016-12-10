package br.com.sistemafjm.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.sistemafjm.Daos.UsuarioDAO;
import br.com.sistemafjm.Models.SexoEnum;
import br.com.sistemafjm.Models.StatusEnum;
import br.com.sistemafjm.Models.UsuarioModelo;

@Controller
@RequestMapping("/usuario")
public class UsuarioController {

    @Autowired // Pedindo para o spring injetar o usuarioDao
    private UsuarioDAO usuarioDAO;

    @RequestMapping("/login")
    public String loginUsuario() {
        System.out.println("Entrou no loginUsuario");
        return "usuario/login";
    }

    /**
     * Entra no página do formulário para cadastrar Usuário
     *
     * @return ModelAndView
     */
    @RequestMapping(value = "/cadastroUsuario", method = RequestMethod.GET)
    public ModelAndView cadastroUsuario() {

        ModelAndView mv = new ModelAndView("usuario/cadastroUsuario");
        mv.addObject("status", StatusEnum.values());
        mv.addObject("sexo", SexoEnum.values());
        System.out.println("Entrou no cadastroUsuario");
        return mv;
    }

    /**
     * Adiciona novo usuário/cliente no banco
     *
     * @param usuario
     * @param result
     * @param redirectAtrbutes
     * @return
     */
    @RequestMapping(value = "/cadastrando", method = RequestMethod.POST)
    public ModelAndView cadastrandoUsuario(UsuarioModelo usuario, BindingResult result,
            RedirectAttributes redirectAtrbutes) {

        /*
		 * String caminho = salvadorDeArquivo.escreve("sumario-imagens",
		 * CaminhoFoto);
         */ /* usuario.setCaminhoFoto(caminho); */

        System.out.println("Entrou no cadastrarUsuario \n " + usuario);

        usuarioDAO.cadastrarUsuario(usuario);
        ModelAndView mv = new ModelAndView("redirect:/usuario/cadastroUsuario");

        // fica entre um request entre o primeiro e o segundo request
        redirectAtrbutes.addFlashAttribute("sucesso", "Usuario cadastrado com sucesso");

        return mv;
    }

}
